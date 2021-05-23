library fenix;

import "dart:async";

import 'package:fenix/events/change_password.dart';
import 'package:fenix/events/change_username.dart';
import 'package:fenix/events/events.dart';
import 'package:fenix/events/message_history.dart';
import 'package:fenix/events/resend_email_verification.dart';
import 'package:fenix/generated/google/protobuf/timestamp.pb.dart';
import 'package:grpc/grpc.dart';

import "./generated/message.pbgrpc.dart";
import "./generated/user.pbgrpc.dart";
import 'events/change_mfa_status.dart';
import 'events/get_mfa_link.dart';
import 'events/get_user.dart';
import 'events/message_sent.dart';
import 'events/token.dart';
import 'events/user_creation.dart';
import 'events/wait_for_email_verification.dart';

class FenixClient {
  UsersClient usersClient;
  MessagesClient messageClient;
  ClientChannel clientChannel;
  String token;
  User user;
  FenixCallbackManager callbacks = FenixCallbackManager();
  Stream<Message> incomingMessages;
  AuthMethod auth;

  /// Connects to Fenix.  Does not log in or send any messages to the server.
  void init(String host, int port) {
    clientChannel = ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    usersClient = UsersClient(clientChannel);
    messageClient = MessagesClient(clientChannel);
  }

  /// Starts the message loop with the server.
  /// Login required beforehand
  Future<void> _messageLoop() async {
    final res = await messageClient.handleMessages(callbacks.stream
        .where(
          (event) => event.type == FenixEventType.messageSent,
        )
        .transform<CreateMessage>(callbacks.sendableDataTransformer()));
    incomingMessages = res.asBroadcastStream();
  }

  /// Connects to the server via token authentication
  Future<void> connectWithToken(
      String token, String tokenID, String userID) async {
    auth = AuthMethod(
      token: Token(token: token, tokenID: tokenID),
      userID: userID,
    );

    user = await usersClient.getUser(
      RequestUser(userID: userID, authentication: auth),
    );
    await _messageLoop();
  }

  /// Sends a message.
  /// Returns void
  ///
  /// Arguments:
  /// message: Message to send
  ///
  /// Events:
  /// [MessageSentEvent] to send message
  void sendMessage(String message) {
    final d = CreateMessage(content: message, authentication: auth);
    callbacks.add(d, MessageSentEvent());
  }

  /// Gets 50 messages since [lastMessage].
  /// Returns a MessageHistory object
  ///
  /// Arguments:
  /// lastMessage: Time of the last message
  ///
  /// Events:
  /// [RequestMessageHistoryEvent] before history is requested
  /// [MessageHistoryEvent] after request
  Future<MessageHistory> getMessageHistory(DateTime lastMessage) async {
    final d = RequestMessageHistory(
        authentication: auth,
        lastMessageTime: Timestamp.fromDateTime(lastMessage));
    final nonce = callbacks.add(d, RequestMessageHistoryEvent());

    final history = await messageClient.getMessageHistory(d);
    callbacks.add(history, MessageHistoryEvent(), nonce: nonce);
    return history;
  }

  /// Requests a new token.
  /// Returns a Token object
  ///
  /// Events:
  /// [RequestTokenEvent] before request is sent
  /// [TokenEvent] after token requested and changed.
  Future<Token> requestToken() async {
    final d = auth;
    final nonce = callbacks.add(d, RequestTokenEvent());

    final token = await usersClient.requestToken(d);
    this.token = token.token;
    this.auth = AuthMethod(token: token, userID: user.userID);
    callbacks.add(token, TokenEvent(), nonce: nonce);

    return token;
  }

  /// Gets a user.
  /// Returns a User object
  ///
  /// Arguments:
  /// userID: ID of the user to fetch
  ///
  /// Events:
  /// [RequestUserEvent] before request is sent
  /// [UserEvent] after user is fetched
  Future<User> getUser(String userID) async {
    final d = RequestUser(
      authentication: auth,
      userID: userID,
    );

    final nonce = callbacks.add(d, RequestUserEvent());

    final user = await usersClient.getUser(d);
    callbacks.add(user, UserEvent(), nonce: nonce);

    return user;
  }

  /// Creates a user.
  /// Returns a UserCreated object and updates [user], [auth], and [token]
  ///
  /// Arguments:
  /// email: Email to use for this account.  Will be verified before messages can be sent
  /// password: Password for this account.  Should be over 10 characters
  /// username: Username for this account.  Should be less than 32 characters
  ///
  /// Events:
  /// [RequestUserCreationEvent] before request is sent
  /// [UserCreatedEvent] after user is created
  Future<UserCreated> createUser(
      String email, String password, String username) async {
    final d = RequestUserCreation(
      email: email,
      password: password,
      username: username,
    );

    final nonce = callbacks.add(d, RequestUserCreationEvent());

    final userCreated = await usersClient.createUser(d);
    token = token;
    auth = AuthMethod(token: userCreated.token, userID: user.userID);
    user = userCreated.user;
    callbacks.add(user, UserCreatedEvent(), nonce: nonce);

    return userCreated;
  }

  /// Waits for email verification
  /// Returns a blank success object after email is verified.
  ///
  /// Events:
  /// [RequestWaitForEmailVerificationEvent] before request is sent
  /// [EmailVerifiedEvent] after email is verified
  Future<Success> waitForEmailVerification() async {
    final d = auth;

    final nonce = callbacks.add(d, RequestWaitForEmailVerificationEvent());

    final stream = await usersClient.waitForEmailVerification(d);
    final success = await stream.first;
    callbacks.add(success, EmailVerifiedEvent(), nonce: nonce);

    return success;
  }

  /// Resends email verification
  /// Returns a blank Success object
  ///
  /// Events:
  /// [RequestResendEmailVerificationEvent] before request is sent
  /// [EmailSentEvent] after email is resent
  Future<Success> resendEmailVerification() async {
    final d = auth;

    final nonce = callbacks.add(d, RequestResendEmailVerificationEvent());

    final success = await usersClient.resendEmailVerification(d);
    callbacks.add(success, EmailSentEvent(), nonce: nonce);

    return success;
  }

  /// Changes MFA status
  /// Returns a blank Success object
  ///
  /// Arguments:
  /// status:  Desired multifactor authentication status
  ///
  /// Events:
  /// [RequestChangeMFAStatusEvent] before request is sent
  /// [MFAStatusChangedEvent] after status is updated.
  Future<Success> changeMFAStatus(bool status) async {
    final d = MFAStatus(authentication: auth, status: status);

    final nonce = callbacks.add(d, RequestChangeMFAStatusEvent());

    final success = await usersClient.changeMFA(d);
    callbacks.add(success, MFAStatusChangedEvent(), nonce: nonce);

    return success;
  }

  /// Gets MFA link
  /// Returns a MFALink object.
  ///
  /// Events:
  /// [RequestMFALinkEvent] before request is sent
  /// [MFALinkEvent] after link is received.
  Future<MFALink> getMFALink() async {
    final d = RequestMFALink(
      authentication: auth,
    );

    final nonce = callbacks.add(d, RequestMFALinkEvent());

    final link = await usersClient.getMFALink(d);
    callbacks.add(link, MFALinkEvent(), nonce: nonce);

    return link;
  }

  /// Changes the user's password
  /// Returns a UserCreated object and updates [auth] and [token]
  ///
  /// Arguments:
  /// old:  Old password
  /// email: Email associated with this account
  /// newPassword:  New password.  Should be more than 10 characters
  ///
  /// Events:
  /// [RequestChangePasswordEvent] before request is sent
  /// [PasswordChangedEvent] after request is made and after [auth] and [token] are updated.
  Future<UserCreated> changePassword(
      String old, String email, String newPassword) async {
    final d = ChangePasswordRequest(
      authentication: Password(
        email: email,
        password: old,
      ),
      password: newPassword,
    );

    final nonce = callbacks.add(d, RequestChangePasswordEvent());

    final user = await usersClient.changePassword(d);
    this.auth = AuthMethod(
      token: user.token,
    );

    this.token = user.token.token;
    callbacks.add(user, PasswordChangedEvent(), nonce: nonce);

    return user;
  }

  /// Changes the user's usernames
  /// Returns a User object, and changes the internal username/discriminator
  ///
  /// Arguments:
  /// username: New username
  ///
  /// Events:
  ///
  /// [RequestChangeUsernameEvent] before request is sent
  /// [UsernameChangedEvent] After request is made and after internal user is changed.
  Future<User> changeUsername(String username) async {
    final d = ChangeUsernameRequest(authentication: auth, username: username);

    final nonce = callbacks.add(d, RequestChangeUsernameEvent());

    final user = await usersClient.changeUsername(d);
    this.user = user;

    callbacks.add(user, UsernameChangedEvent(), nonce: nonce);

    return user;
  }
}

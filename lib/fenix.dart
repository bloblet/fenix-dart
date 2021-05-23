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
  Future<void> connectWithToken(String token, String tokenID, String userID) async {
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
  void sendMessage(String message) {
    final d = CreateMessage(content: message, authentication: auth);
    callbacks.add(d, MessageSentEvent());
  }

  /// Gets 50 messages since [lastMessage].
  ///
  /// Calls [RequestMessageHistoryEvent] and [MessageHistoryEvent]
  Future<MessageHistory> getMessageHistory(DateTime lastMessage) async {
    final d = RequestMessageHistory(authentication: auth, lastMessageTime: Timestamp.fromDateTime(lastMessage));
    final nonce = callbacks.add(d, RequestMessageHistoryEvent());

    final history = await messageClient.getMessageHistory(d);
    callbacks.add(history, MessageHistoryEvent(), nonce: nonce);
    return history;
  }

  /// Requests a new token.
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
  Future<User> getUser(String userID) async {
    final d = RequestUser(
      authentication: auth,
      userID : userID,
    );

    final nonce = callbacks.add(d, RequestUserEvent());

    final user = await usersClient.getUser(d);
    callbacks.add(user, UserEvent(), nonce: nonce);

    return user;
  }

  /// Creates a user.
  Future<UserCreated> createUser(String email, String password, String username) async {
    final d = RequestUserCreation(
      email: email,
      password: password,
      username: username,
    );

    final nonce = callbacks.add(d, RequestUserCreationEvent());

    final userCreated = await usersClient.createUser(d);
    token = token;
    auth = AuthMethod(token: userCreated.token, userID: user.userID);

    callbacks.add(user, UserCreatedEvent(), nonce: nonce);

    return userCreated;
  }

  /// Waits for email verification
  Future<Success> waitForEmailVerification() async {
    final d = auth;

    final nonce = callbacks.add(d, RequestWaitForEmailVerificationEvent());

    final stream = await usersClient.waitForEmailVerification(d);
    final success = await stream.first;
    callbacks.add(success, EmailVerifiedEvent(), nonce: nonce);

    return success;
  }

  /// Resends email verification
  Future<Success> resendEmailVerification() async {
    final d = auth;

    final nonce = callbacks.add(d, RequestResendEmailVerificationEvent());

    final success = await usersClient.resendEmailVerification(d);
    callbacks.add(success, EmailSentEvent(), nonce: nonce);

    return success;
  }

  /// Changes MFA status
  Future<Success> changeMFAStatus(bool status) async {
    final d = MFAStatus(
      authentication: auth,
      status: status
    );

    final nonce = callbacks.add(d, RequestChangeMFAStatusEvent());

    final success = await usersClient.changeMFA(d);
    callbacks.add(success, MFAStatusChangedEvent(), nonce: nonce);

    return success;
  }

  /// Gets MFA link
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
  Future<UserCreated> changePassword(String old, String email, String newPassword) async {
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
  Future<User> changeUsername(String username) async {
    final d = ChangeUsernameRequest(
      authentication: auth,
      username: username
    );

    final nonce = callbacks.add(d, RequestChangeUsernameEvent());

    final user = await usersClient.changeUsername(d);
    this.user = user;

    callbacks.add(user, UsernameChangedEvent(), nonce: nonce);

    return user;
  }
}


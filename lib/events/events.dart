import 'dart:async';
import 'package:uuid/uuid.dart';

enum FenixEventType { messageSent, requestMessageHistory, messageHistory, requestToken, token, requestUser, user, requestUserCreation, userCreated, requestWaitForEmailVerification, emailVerified, requestResendEmailVerification, emailSent, requestChangeMFAStatus, mfaStatusChanged, requestMFALink, mfaLink, requestChangePassword, passwordChanged, requestChangeUsername, usernameChanged }

/// Base for any type of event.
abstract class FenixEvent {
  void fromData(d);
  Event toEvent({nonce});
  dynamic toSendableData();
}

/// Wrapper for [FenixEvent]
class Event {
  FenixEvent fenixEvent;
  DateTime dateTime;
  FenixEventType type;
  String nonce;
}

/// Manages callbacks for fenix.
///
/// Example of getting all messageSent events
/// ```dart
/// final callbackManager = FenixCallbackManager();
/// final messages = callbackManager.stream.where((event) => event.type == FenixEventType.messageSent);
/// messages.forEach((event) {
///    print(event.fenixEvent.toString());
///  });
/// ```
///
/// Example of sending a messageSent event
/// ```dart
///     final m = MessageSentEvent();
///     m.fromData(CreateMessage(content: "Fenix is amazing!"));
///     sink.add(m.toEvent());
/// ```
class FenixCallbackManager {
  StreamController<Event> _streamController = StreamController.broadcast();

  Stream<Event> get stream {
    return _streamController.stream;
  }

  StreamSink<Event> get sink {
    return _streamController.sink;
  }

  /// Converts [Event] into sendable data.
  StreamTransformer sendableDataTransformer() {
    return StreamTransformer<Event, dynamic>.fromHandlers(
      handleData: (data, sink) {
        sink.add(data.fenixEvent.toSendableData());
      },
    );
  }

  Event event(d, FenixEvent t, {nonce = null}) {
    t.fromData(d);
    return t.toEvent(nonce: nonce);
  }

  String add(d, FenixEvent t, {nonce = null}) {
    if (nonce == null) {
      nonce = Uuid().v4();
    }
    sink.add(event(d, t, nonce: nonce));
    return nonce;
  }
}

import '../generated/user.pb.dart';
import 'events.dart';

/// Event fired waiting for email verification
class RequestWaitForEmailVerificationEvent implements FenixEvent {
  AuthMethod m;

  /// Constructs event from data [d]
  @override
  void fromData(d) {
    m = d;
  }

  /// Converts to an Event
  @override
  Event toEvent({nonce}) {
    final e = Event()
      ..fenixEvent = this
      ..dateTime = DateTime.now()
      ..type = FenixEventType.requestWaitForEmailVerification
      ..nonce = nonce;
    return e;
  }

  /// Converts to sendable data
  @override
  toSendableData() {
    return m;
  }
}

/// Event fired after email is verified
class EmailVerifiedEvent implements FenixEvent {
  Success m;

  /// Constructs event from data [d]
  @override
  void fromData(d) {
    m = d;
  }

  /// Converts to an Event
  @override
  Event toEvent({nonce}) {
    final e = Event()
      ..fenixEvent = this
      ..dateTime = DateTime.now()
      ..type = FenixEventType.emailVerified
      ..nonce = nonce;
    return e;
  }

  /// Converts to sendable data
  @override
  toSendableData() {
    return m;
  }
}

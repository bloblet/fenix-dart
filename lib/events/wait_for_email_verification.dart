import '../generated/user.pb.dart';
import 'events.dart';

class RequestWaitForEmailVerificationEvent implements FenixEvent {
  AuthMethod m;

  @override
  void fromData(d) {
    m = d;
  }

  @override
  Event toEvent({nonce}) {
    final e = Event()
      ..fenixEvent = this
      ..dateTime = DateTime.now()
      ..type = FenixEventType.requestWaitForEmailVerification
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

class EmailVerifiedEvent implements FenixEvent {
  Success m;

  @override
  void fromData(d) {
    m = d;
  }

  @override
  Event toEvent({nonce}) {
    final e = Event()
      ..fenixEvent = this
      ..dateTime = DateTime.now()
      ..type = FenixEventType.emailVerified
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

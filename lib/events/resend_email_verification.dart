import '../generated/user.pb.dart';
import 'events.dart';

class RequestResendEmailVerificationEvent implements FenixEvent {
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
      ..type = FenixEventType.requestResendEmailVerification
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

class EmailSentEvent implements FenixEvent {
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
      ..type = FenixEventType.emailSent
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

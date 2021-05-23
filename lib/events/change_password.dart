import '../generated/user.pb.dart';
import 'events.dart';

class RequestChangePasswordEvent implements FenixEvent {
  ChangePasswordRequest m;

  @override
  void fromData(d) {
    m = d;
  }

  @override
  Event toEvent({nonce}) {
    final e = Event()
      ..fenixEvent = this
      ..dateTime = DateTime.now()
      ..type = FenixEventType.requestChangePassword
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

class PasswordChangedEvent implements FenixEvent {
  UserCreated m;

  @override
  void fromData(d) {
    m = d;
  }

  @override
  Event toEvent({nonce}) {
    final e = Event()
      ..fenixEvent = this
      ..dateTime = DateTime.now()
      ..type = FenixEventType.passwordChanged
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

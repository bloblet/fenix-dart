import '../generated/user.pb.dart';
import 'events.dart';

class RequestChangeUsernameEvent implements FenixEvent {
  ChangeUsernameRequest m;

  @override
  void fromData(d) {
    m = d;
  }

  @override
  Event toEvent({nonce}) {
    final e = Event()
      ..fenixEvent = this
      ..dateTime = DateTime.now()
      ..type = FenixEventType.requestChangeUsername
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

class UsernameChangedEvent implements FenixEvent {
  User m;

  @override
  void fromData(d) {
    m = d;
  }

  @override
  Event toEvent({nonce}) {
    final e = Event()
      ..fenixEvent = this
      ..dateTime = DateTime.now()
      ..type = FenixEventType.usernameChanged
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

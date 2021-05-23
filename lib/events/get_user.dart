import '../generated/user.pb.dart';
import 'events.dart';

class RequestUserEvent implements FenixEvent {
  RequestUser m;

  @override
  void fromData(d) {
    m = d;
  }

  @override
  Event toEvent({nonce}) {
    final e = Event()
      ..fenixEvent = this
      ..dateTime = DateTime.now()
      ..type = FenixEventType.requestUser
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

class UserEvent implements FenixEvent {
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
      ..type = FenixEventType.user
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

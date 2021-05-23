import '../generated/user.pb.dart';
import 'events.dart';

class RequestUserCreationEvent implements FenixEvent {
  RequestUserCreation m;

  @override
  void fromData(d) {
    m = d;
  }

  @override
  Event toEvent({nonce}) {
    final e = Event()
      ..fenixEvent = this
      ..dateTime = DateTime.now()
      ..type = FenixEventType.requestUserCreation
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

class UserCreatedEvent implements FenixEvent {
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
      ..type = FenixEventType.userCreated
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

import '../generated/user.pb.dart';
import 'events.dart';

class RequestTokenEvent implements FenixEvent {
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
      ..type = FenixEventType.requestToken
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

class TokenEvent implements FenixEvent {
  Token m;

  @override
  void fromData(d) {
    m = d;
  }

  @override
  Event toEvent({nonce}) {
    final e = Event()
      ..fenixEvent = this
      ..dateTime = DateTime.now()
      ..type = FenixEventType.token
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

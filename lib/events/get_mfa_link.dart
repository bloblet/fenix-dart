import '../generated/user.pb.dart';
import 'events.dart';

class RequestMFALinkEvent implements FenixEvent {
  RequestMFALink m;

  @override
  void fromData(d) {
    m = d;
  }

  @override
  Event toEvent({nonce}) {
    final e = Event()
      ..fenixEvent = this
      ..dateTime = DateTime.now()
      ..type = FenixEventType.requestMFALink
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

class MFALinkEvent implements FenixEvent {
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
      ..type = FenixEventType.mfaLink
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

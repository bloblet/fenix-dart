import '../generated/user.pb.dart';
import 'events.dart';

class RequestChangeMFAStatusEvent implements FenixEvent {
  MFAStatus m;

  @override
  void fromData(d) {
    m = d;
  }

  @override
  Event toEvent({nonce}) {
    final e = Event()
      ..fenixEvent = this
      ..dateTime = DateTime.now()
      ..type = FenixEventType.requestChangeMFAStatus
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

class MFAStatusChangedEvent implements FenixEvent {
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
      ..type = FenixEventType.mfaStatusChanged
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

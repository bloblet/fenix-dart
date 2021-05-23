import '../generated/message.pb.dart';
import 'events.dart';

class RequestMessageHistoryEvent implements FenixEvent {
  RequestMessageHistory m;

  @override
  void fromData(d) {
    m = d;
  }

  @override
  Event toEvent({nonce}) {
    final e = Event()
      ..fenixEvent = this
      ..dateTime = DateTime.now()
      ..type = FenixEventType.requestMessageHistory
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

class MessageHistoryEvent implements FenixEvent {
  MessageHistory m;

  @override
  void fromData(d) {
    m = d;
  }

  @override
  Event toEvent({nonce}) {
    final e = Event()
      ..fenixEvent = this
      ..dateTime = DateTime.now()
      ..type = FenixEventType.messageHistory
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }
}

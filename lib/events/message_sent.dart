import '../generated/message.pb.dart';
import 'events.dart';

class MessageSentEvent implements FenixEvent {
  CreateMessage m;

  @override
  void fromData(d) {
    m = d;
  }

  @override
  Event toEvent({nonce}) {
    final e = Event()
      ..fenixEvent = this
      ..dateTime = DateTime.now()
      ..type = FenixEventType.messageSent
      ..nonce = nonce;
    return e;
  }

  @override
  toSendableData() {
    return m;
  }

  @override
  String toString() {
    return m.content;
  }
}

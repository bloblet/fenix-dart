import '../generated/message.pb.dart';
import 'events.dart';

/// Event fired before message is sent
class MessageSentEvent implements FenixEvent {
  CreateMessage m;

  /// Constructs event from data [d]
  @override
  void fromData(d) {
    m = d;
  }

  /// Converts to an Event
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

  /// Converts to sendable data
  @override
  String toString() {
    return m.content;
  }
}

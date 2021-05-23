import '../generated/user.pb.dart';
import 'events.dart';

/// Event fired before username is changed
class RequestChangeUsernameEvent implements FenixEvent {
  ChangeUsernameRequest m;

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
      ..type = FenixEventType.requestChangeUsername
      ..nonce = nonce;
    return e;
  }

  /// Converts to sendable data
  @override
  toSendableData() {
    return m;
  }
}

/// Event fired after username is changed
class UsernameChangedEvent implements FenixEvent {
  User m;

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
      ..type = FenixEventType.usernameChanged
      ..nonce = nonce;
    return e;
  }

  /// Converts to sendable data
  @override
  toSendableData() {
    return m;
  }
}

import '../generated/user.pb.dart';
import 'events.dart';

/// Event fired before user creation is requested
class RequestUserCreationEvent implements FenixEvent {
  RequestUserCreation m;

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
      ..type = FenixEventType.requestUserCreation
      ..nonce = nonce;
    return e;
  }

  /// Converts to sendable data
  @override
  toSendableData() {
    return m;
  }
}

/// Event fired after user creation is requested
class UserCreatedEvent implements FenixEvent {
  UserCreated m;

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
      ..type = FenixEventType.userCreated
      ..nonce = nonce;
    return e;
  }

  /// Converts to sendable data
  @override
  toSendableData() {
    return m;
  }
}

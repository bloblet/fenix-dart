import '../generated/user.pb.dart';
import 'events.dart';

/// Event fired before token is requested
class RequestTokenEvent implements FenixEvent {
  AuthMethod m;

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
      ..type = FenixEventType.requestToken
      ..nonce = nonce;
    return e;
  }

  /// Converts to sendable data
  @override
  toSendableData() {
    return m;
  }
}

/// Event fired after token is requested
class TokenEvent implements FenixEvent {
  Token m;

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
      ..type = FenixEventType.token
      ..nonce = nonce;
    return e;
  }

  /// Converts to sendable data
  @override
  toSendableData() {
    return m;
  }
}

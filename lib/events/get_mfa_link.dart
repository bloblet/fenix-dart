import '../generated/user.pb.dart';
import 'events.dart';

/// Event fired before MFA link is requested
class RequestMFALinkEvent implements FenixEvent {
  RequestMFALink m;

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
      ..type = FenixEventType.requestMFALink
      ..nonce = nonce;
    return e;
  }

  /// Converts to sendable data
  @override
  toSendableData() {
    return m;
  }
}

/// Event fired after MFA link is requested
class MFALinkEvent implements FenixEvent {
  Success m;

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
      ..type = FenixEventType.mfaLink
      ..nonce = nonce;
    return e;
  }

  /// Converts to sendable data
  @override
  toSendableData() {
    return m;
  }
}

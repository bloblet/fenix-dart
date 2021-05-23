import 'package:fenix/events/events.dart';
import 'package:fenix/fenix.dart';
import 'package:pedantic/pedantic.dart';

final fenix = FenixClient();

void main() async {
  fenix.init('bloblet.com', 5555);

  await fenix.connectWithToken('abcd', 'tokenID', 'userID');

  unawaited(fenix.callbacks.stream.forEach((Event e) {
    print(e.fenixEvent.toString());
  }));

  fenix.sendMessage('Hey, fenix is cool!');

}
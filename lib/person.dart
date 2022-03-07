import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:grpc_app/person.pbgrpc.dart';

class PersonClient {
  Future<List<Person>> get() async {
    var completer = Completer<List<Person>>();
    final channel = ClientChannel(
      'localhost',
      port: 8999,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    final stub = PersonServiceClient(channel);

    try {
      var response = await stub.getAll(Empty());
      completer.complete(response.people);
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();

    return completer.future;
  }
}
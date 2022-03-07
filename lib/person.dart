import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:grpc_app/person.pbgrpc.dart';

class PersonClient {
  Future<List<Person>> get() async {
    final channel = ClientChannel(
      'localhost',
      port: 8999,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    final stub = PersonServiceClient(channel);

    try {
      var response = await stub.getAll(Empty());
      return response.people;
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();

    return Future<List<Person>>.value(List<Person>.empty());
  }
}
///
//  Generated code. Do not modify.
//  source: person.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'person.pb.dart' as $0;
export 'person.pb.dart';

class PersonServiceClient extends $grpc.Client {
  static final _$getAll = $grpc.ClientMethod<$0.Empty, $0.AllPerson>(
      '/person.PersonService/GetAll',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AllPerson.fromBuffer(value));
  static final _$get = $grpc.ClientMethod<$0.Id, $0.Person>(
      '/person.PersonService/Get',
      ($0.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Person.fromBuffer(value));
  static final _$create = $grpc.ClientMethod<$0.Person, $0.Empty>(
      '/person.PersonService/Create',
      ($0.Person value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.Person, $0.Empty>(
      '/person.PersonService/Update',
      ($0.Person value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$0.Id, $0.Empty>(
      '/person.PersonService/Delete',
      ($0.Id value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  PersonServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AllPerson> getAll($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAll, request, options: options);
  }

  $grpc.ResponseFuture<$0.Person> get($0.Id request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> create($0.Person request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> update($0.Person request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> delete($0.Id request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

abstract class PersonServiceBase extends $grpc.Service {
  $core.String get $name => 'person.PersonService';

  PersonServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.AllPerson>(
        'GetAll',
        getAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.AllPerson value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Id, $0.Person>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Id.fromBuffer(value),
        ($0.Person value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Person, $0.Empty>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Person.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Person, $0.Empty>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Person.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Id, $0.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Id.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.AllPerson> getAll_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAll(call, await request);
  }

  $async.Future<$0.Person> get_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Id> request) async {
    return get(call, await request);
  }

  $async.Future<$0.Empty> create_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Person> request) async {
    return create(call, await request);
  }

  $async.Future<$0.Empty> update_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Person> request) async {
    return update(call, await request);
  }

  $async.Future<$0.Empty> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Id> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.AllPerson> getAll($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Person> get($grpc.ServiceCall call, $0.Id request);
  $async.Future<$0.Empty> create($grpc.ServiceCall call, $0.Person request);
  $async.Future<$0.Empty> update($grpc.ServiceCall call, $0.Person request);
  $async.Future<$0.Empty> delete($grpc.ServiceCall call, $0.Id request);
}

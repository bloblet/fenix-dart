///
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'message.pb.dart' as $1;
export 'message.pb.dart';

class MessagesClient extends $grpc.Client {
  static final _$handleMessages =
      $grpc.ClientMethod<$1.CreateMessage, $1.Message>(
          '/Messages/HandleMessages',
          ($1.CreateMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Message.fromBuffer(value));
  static final _$getMessageHistory =
      $grpc.ClientMethod<$1.RequestMessageHistory, $1.MessageHistory>(
          '/Messages/GetMessageHistory',
          ($1.RequestMessageHistory value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.MessageHistory.fromBuffer(value));

  MessagesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$1.Message> handleMessages(
      $async.Stream<$1.CreateMessage> request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(_$handleMessages, request, options: options);
  }

  $grpc.ResponseFuture<$1.MessageHistory> getMessageHistory(
      $1.RequestMessageHistory request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getMessageHistory, request, options: options);
  }
}

abstract class MessagesServiceBase extends $grpc.Service {
  $core.String get $name => 'Messages';

  MessagesServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.CreateMessage, $1.Message>(
        'HandleMessages',
        handleMessages,
        true,
        true,
        ($core.List<$core.int> value) => $1.CreateMessage.fromBuffer(value),
        ($1.Message value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RequestMessageHistory, $1.MessageHistory>(
        'GetMessageHistory',
        getMessageHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RequestMessageHistory.fromBuffer(value),
        ($1.MessageHistory value) => value.writeToBuffer()));
  }

  $async.Future<$1.MessageHistory> getMessageHistory_Pre($grpc.ServiceCall call,
      $async.Future<$1.RequestMessageHistory> request) async {
    return getMessageHistory(call, await request);
  }

  $async.Stream<$1.Message> handleMessages(
      $grpc.ServiceCall call, $async.Stream<$1.CreateMessage> request);
  $async.Future<$1.MessageHistory> getMessageHistory(
      $grpc.ServiceCall call, $1.RequestMessageHistory request);
}

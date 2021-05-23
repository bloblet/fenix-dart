///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.pb.dart' as $0;
export 'user.pb.dart';

class UsersClient extends $grpc.Client {
  static final _$requestToken = $grpc.ClientMethod<$0.AuthMethod, $0.Token>(
      '/Users/RequestToken',
      ($0.AuthMethod value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Token.fromBuffer(value));
  static final _$getUser = $grpc.ClientMethod<$0.RequestUser, $0.User>(
      '/Users/GetUser',
      ($0.RequestUser value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$createUser =
      $grpc.ClientMethod<$0.RequestUserCreation, $0.UserCreated>(
          '/Users/CreateUser',
          ($0.RequestUserCreation value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UserCreated.fromBuffer(value));
  static final _$waitForEmailVerification =
      $grpc.ClientMethod<$0.AuthMethod, $0.Success>(
          '/Users/WaitForEmailVerification',
          ($0.AuthMethod value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Success.fromBuffer(value));
  static final _$resendEmailVerification =
      $grpc.ClientMethod<$0.AuthMethod, $0.Success>(
          '/Users/ResendEmailVerification',
          ($0.AuthMethod value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Success.fromBuffer(value));
  static final _$changeMFA = $grpc.ClientMethod<$0.MFAStatus, $0.Success>(
      '/Users/ChangeMFA',
      ($0.MFAStatus value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Success.fromBuffer(value));
  static final _$getMFALink = $grpc.ClientMethod<$0.RequestMFALink, $0.MFALink>(
      '/Users/GetMFALink',
      ($0.RequestMFALink value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MFALink.fromBuffer(value));
  static final _$changeUsername =
      $grpc.ClientMethod<$0.ChangeUsernameRequest, $0.User>(
          '/Users/ChangeUsername',
          ($0.ChangeUsernameRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$changePassword =
      $grpc.ClientMethod<$0.ChangePasswordRequest, $0.UserCreated>(
          '/Users/ChangePassword',
          ($0.ChangePasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UserCreated.fromBuffer(value));

  UsersClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Token> requestToken($0.AuthMethod request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$requestToken, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> getUser($0.RequestUser request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserCreated> createUser(
      $0.RequestUserCreation request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }

  $grpc.ResponseStream<$0.Success> waitForEmailVerification(
      $0.AuthMethod request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$waitForEmailVerification, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Success> resendEmailVerification(
      $0.AuthMethod request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$resendEmailVerification, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.Success> changeMFA($0.MFAStatus request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$changeMFA, request, options: options);
  }

  $grpc.ResponseFuture<$0.MFALink> getMFALink($0.RequestMFALink request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getMFALink, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> changeUsername($0.ChangeUsernameRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$changeUsername, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserCreated> changePassword(
      $0.ChangePasswordRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$changePassword, request, options: options);
  }
}

abstract class UsersServiceBase extends $grpc.Service {
  $core.String get $name => 'Users';

  UsersServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AuthMethod, $0.Token>(
        'RequestToken',
        requestToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthMethod.fromBuffer(value),
        ($0.Token value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RequestUser, $0.User>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RequestUser.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RequestUserCreation, $0.UserCreated>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RequestUserCreation.fromBuffer(value),
        ($0.UserCreated value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthMethod, $0.Success>(
        'WaitForEmailVerification',
        waitForEmailVerification_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.AuthMethod.fromBuffer(value),
        ($0.Success value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthMethod, $0.Success>(
        'ResendEmailVerification',
        resendEmailVerification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthMethod.fromBuffer(value),
        ($0.Success value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MFAStatus, $0.Success>(
        'ChangeMFA',
        changeMFA_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MFAStatus.fromBuffer(value),
        ($0.Success value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RequestMFALink, $0.MFALink>(
        'GetMFALink',
        getMFALink_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RequestMFALink.fromBuffer(value),
        ($0.MFALink value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChangeUsernameRequest, $0.User>(
        'ChangeUsername',
        changeUsername_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChangeUsernameRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChangePasswordRequest, $0.UserCreated>(
        'ChangePassword',
        changePassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChangePasswordRequest.fromBuffer(value),
        ($0.UserCreated value) => value.writeToBuffer()));
  }

  $async.Future<$0.Token> requestToken_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AuthMethod> request) async {
    return requestToken(call, await request);
  }

  $async.Future<$0.User> getUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RequestUser> request) async {
    return getUser(call, await request);
  }

  $async.Future<$0.UserCreated> createUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.RequestUserCreation> request) async {
    return createUser(call, await request);
  }

  $async.Stream<$0.Success> waitForEmailVerification_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AuthMethod> request) async* {
    yield* waitForEmailVerification(call, await request);
  }

  $async.Future<$0.Success> resendEmailVerification_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AuthMethod> request) async {
    return resendEmailVerification(call, await request);
  }

  $async.Future<$0.Success> changeMFA_Pre(
      $grpc.ServiceCall call, $async.Future<$0.MFAStatus> request) async {
    return changeMFA(call, await request);
  }

  $async.Future<$0.MFALink> getMFALink_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RequestMFALink> request) async {
    return getMFALink(call, await request);
  }

  $async.Future<$0.User> changeUsername_Pre($grpc.ServiceCall call,
      $async.Future<$0.ChangeUsernameRequest> request) async {
    return changeUsername(call, await request);
  }

  $async.Future<$0.UserCreated> changePassword_Pre($grpc.ServiceCall call,
      $async.Future<$0.ChangePasswordRequest> request) async {
    return changePassword(call, await request);
  }

  $async.Future<$0.Token> requestToken(
      $grpc.ServiceCall call, $0.AuthMethod request);
  $async.Future<$0.User> getUser(
      $grpc.ServiceCall call, $0.RequestUser request);
  $async.Future<$0.UserCreated> createUser(
      $grpc.ServiceCall call, $0.RequestUserCreation request);
  $async.Stream<$0.Success> waitForEmailVerification(
      $grpc.ServiceCall call, $0.AuthMethod request);
  $async.Future<$0.Success> resendEmailVerification(
      $grpc.ServiceCall call, $0.AuthMethod request);
  $async.Future<$0.Success> changeMFA(
      $grpc.ServiceCall call, $0.MFAStatus request);
  $async.Future<$0.MFALink> getMFALink(
      $grpc.ServiceCall call, $0.RequestMFALink request);
  $async.Future<$0.User> changeUsername(
      $grpc.ServiceCall call, $0.ChangeUsernameRequest request);
  $async.Future<$0.UserCreated> changePassword(
      $grpc.ServiceCall call, $0.ChangePasswordRequest request);
}

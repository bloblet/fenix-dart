///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $2;

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'User', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID', protoName: 'UserID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Username', protoName: 'Username')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Discriminator', protoName: 'Discriminator')
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User({
    $core.String userID,
    $core.String username,
    $core.String discriminator,
  }) {
    final _result = create();
    if (userID != null) {
      _result.userID = userID;
    }
    if (username != null) {
      _result.username = username;
    }
    if (discriminator != null) {
      _result.discriminator = discriminator;
    }
    return _result;
  }
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  User clone() => User()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User)) as User; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  @$core.pragma('dart2js:noInline')
  static User getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userID => $_getSZ(0);
  @$pb.TagNumber(1)
  set userID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserID() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get discriminator => $_getSZ(2);
  @$pb.TagNumber(3)
  set discriminator($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDiscriminator() => $_has(2);
  @$pb.TagNumber(3)
  void clearDiscriminator() => clearField(3);
}

class RequestUser extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestUser', createEmptyInstance: create)
    ..aOM<AuthMethod>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'authentication', subBuilder: AuthMethod.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID', protoName: 'UserID')
    ..hasRequiredFields = false
  ;

  RequestUser._() : super();
  factory RequestUser({
    AuthMethod authentication,
    $core.String userID,
  }) {
    final _result = create();
    if (authentication != null) {
      _result.authentication = authentication;
    }
    if (userID != null) {
      _result.userID = userID;
    }
    return _result;
  }
  factory RequestUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestUser clone() => RequestUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestUser copyWith(void Function(RequestUser) updates) => super.copyWith((message) => updates(message as RequestUser)) as RequestUser; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestUser create() => RequestUser._();
  RequestUser createEmptyInstance() => create();
  static $pb.PbList<RequestUser> createRepeated() => $pb.PbList<RequestUser>();
  @$core.pragma('dart2js:noInline')
  static RequestUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestUser>(create);
  static RequestUser _defaultInstance;

  @$pb.TagNumber(1)
  AuthMethod get authentication => $_getN(0);
  @$pb.TagNumber(1)
  set authentication(AuthMethod v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthentication() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthentication() => clearField(1);
  @$pb.TagNumber(1)
  AuthMethod ensureAuthentication() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get userID => $_getSZ(1);
  @$pb.TagNumber(2)
  set userID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserID() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserID() => clearField(2);
}

class Token extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Token', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Token', protoName: 'Token')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'TokenID', protoName: 'TokenID')
    ..aOM<$2.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ExpirationDate', protoName: 'ExpirationDate', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Token._() : super();
  factory Token({
    $core.String token,
    $core.String tokenID,
    $2.Timestamp expirationDate,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (tokenID != null) {
      _result.tokenID = tokenID;
    }
    if (expirationDate != null) {
      _result.expirationDate = expirationDate;
    }
    return _result;
  }
  factory Token.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Token.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Token clone() => Token()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Token copyWith(void Function(Token) updates) => super.copyWith((message) => updates(message as Token)) as Token; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Token create() => Token._();
  Token createEmptyInstance() => create();
  static $pb.PbList<Token> createRepeated() => $pb.PbList<Token>();
  @$core.pragma('dart2js:noInline')
  static Token getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Token>(create);
  static Token _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tokenID => $_getSZ(1);
  @$pb.TagNumber(2)
  set tokenID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTokenID() => $_has(1);
  @$pb.TagNumber(2)
  void clearTokenID() => clearField(2);

  @$pb.TagNumber(3)
  $2.Timestamp get expirationDate => $_getN(2);
  @$pb.TagNumber(3)
  set expirationDate($2.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpirationDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpirationDate() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureExpirationDate() => $_ensure(2);
}

class Password extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Password', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Password', protoName: 'Password')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..hasRequiredFields = false
  ;

  Password._() : super();
  factory Password({
    $core.String password,
    $core.String email,
  }) {
    final _result = create();
    if (password != null) {
      _result.password = password;
    }
    if (email != null) {
      _result.email = email;
    }
    return _result;
  }
  factory Password.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Password.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Password clone() => Password()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Password copyWith(void Function(Password) updates) => super.copyWith((message) => updates(message as Password)) as Password; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Password create() => Password._();
  Password createEmptyInstance() => create();
  static $pb.PbList<Password> createRepeated() => $pb.PbList<Password>();
  @$core.pragma('dart2js:noInline')
  static Password getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Password>(create);
  static Password _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get password => $_getSZ(0);
  @$pb.TagNumber(1)
  set password($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassword() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);
}

class AuthMethod extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AuthMethod', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID', protoName: 'UserID')
    ..aOM<Token>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Token', protoName: 'Token', subBuilder: Token.create)
    ..aOM<Password>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Password', protoName: 'Password', subBuilder: Password.create)
    ..hasRequiredFields = false
  ;

  AuthMethod._() : super();
  factory AuthMethod({
    $core.String userID,
    Token token,
    Password password,
  }) {
    final _result = create();
    if (userID != null) {
      _result.userID = userID;
    }
    if (token != null) {
      _result.token = token;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory AuthMethod.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthMethod.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthMethod clone() => AuthMethod()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthMethod copyWith(void Function(AuthMethod) updates) => super.copyWith((message) => updates(message as AuthMethod)) as AuthMethod; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthMethod create() => AuthMethod._();
  AuthMethod createEmptyInstance() => create();
  static $pb.PbList<AuthMethod> createRepeated() => $pb.PbList<AuthMethod>();
  @$core.pragma('dart2js:noInline')
  static AuthMethod getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthMethod>(create);
  static AuthMethod _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userID => $_getSZ(0);
  @$pb.TagNumber(1)
  set userID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserID() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserID() => clearField(1);

  @$pb.TagNumber(2)
  Token get token => $_getN(1);
  @$pb.TagNumber(2)
  set token(Token v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
  @$pb.TagNumber(2)
  Token ensureToken() => $_ensure(1);

  @$pb.TagNumber(3)
  Password get password => $_getN(2);
  @$pb.TagNumber(3)
  set password(Password v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => clearField(3);
  @$pb.TagNumber(3)
  Password ensurePassword() => $_ensure(2);
}

class RequestUserCreation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestUserCreation', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Username', protoName: 'Username')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Password', protoName: 'Password')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Email', protoName: 'Email')
    ..hasRequiredFields = false
  ;

  RequestUserCreation._() : super();
  factory RequestUserCreation({
    $core.String username,
    $core.String password,
    $core.String email,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    if (password != null) {
      _result.password = password;
    }
    if (email != null) {
      _result.email = email;
    }
    return _result;
  }
  factory RequestUserCreation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestUserCreation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestUserCreation clone() => RequestUserCreation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestUserCreation copyWith(void Function(RequestUserCreation) updates) => super.copyWith((message) => updates(message as RequestUserCreation)) as RequestUserCreation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestUserCreation create() => RequestUserCreation._();
  RequestUserCreation createEmptyInstance() => create();
  static $pb.PbList<RequestUserCreation> createRepeated() => $pb.PbList<RequestUserCreation>();
  @$core.pragma('dart2js:noInline')
  static RequestUserCreation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestUserCreation>(create);
  static RequestUserCreation _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);
}

class UserCreated extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserCreated', createEmptyInstance: create)
    ..aOM<User>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'User', protoName: 'User', subBuilder: User.create)
    ..aOM<Token>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Token', protoName: 'Token', subBuilder: Token.create)
    ..hasRequiredFields = false
  ;

  UserCreated._() : super();
  factory UserCreated({
    User user,
    Token token,
  }) {
    final _result = create();
    if (user != null) {
      _result.user = user;
    }
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory UserCreated.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserCreated.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserCreated clone() => UserCreated()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserCreated copyWith(void Function(UserCreated) updates) => super.copyWith((message) => updates(message as UserCreated)) as UserCreated; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserCreated create() => UserCreated._();
  UserCreated createEmptyInstance() => create();
  static $pb.PbList<UserCreated> createRepeated() => $pb.PbList<UserCreated>();
  @$core.pragma('dart2js:noInline')
  static UserCreated getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserCreated>(create);
  static UserCreated _defaultInstance;

  @$pb.TagNumber(1)
  User get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(User v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  User ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  Token get token => $_getN(1);
  @$pb.TagNumber(2)
  set token(Token v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
  @$pb.TagNumber(2)
  Token ensureToken() => $_ensure(1);
}

class Success extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Success', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Success._() : super();
  factory Success() => create();
  factory Success.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Success.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Success clone() => Success()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Success copyWith(void Function(Success) updates) => super.copyWith((message) => updates(message as Success)) as Success; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Success create() => Success._();
  Success createEmptyInstance() => create();
  static $pb.PbList<Success> createRepeated() => $pb.PbList<Success>();
  @$core.pragma('dart2js:noInline')
  static Success getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Success>(create);
  static Success _defaultInstance;
}

class MFAStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MFAStatus', createEmptyInstance: create)
    ..aOM<AuthMethod>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Authentication', protoName: 'Authentication', subBuilder: AuthMethod.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Status', protoName: 'Status')
    ..hasRequiredFields = false
  ;

  MFAStatus._() : super();
  factory MFAStatus({
    AuthMethod authentication,
    $core.bool status,
  }) {
    final _result = create();
    if (authentication != null) {
      _result.authentication = authentication;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory MFAStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MFAStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MFAStatus clone() => MFAStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MFAStatus copyWith(void Function(MFAStatus) updates) => super.copyWith((message) => updates(message as MFAStatus)) as MFAStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MFAStatus create() => MFAStatus._();
  MFAStatus createEmptyInstance() => create();
  static $pb.PbList<MFAStatus> createRepeated() => $pb.PbList<MFAStatus>();
  @$core.pragma('dart2js:noInline')
  static MFAStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MFAStatus>(create);
  static MFAStatus _defaultInstance;

  @$pb.TagNumber(1)
  AuthMethod get authentication => $_getN(0);
  @$pb.TagNumber(1)
  set authentication(AuthMethod v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthentication() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthentication() => clearField(1);
  @$pb.TagNumber(1)
  AuthMethod ensureAuthentication() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get status => $_getBF(1);
  @$pb.TagNumber(2)
  set status($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class RequestMFALink extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestMFALink', createEmptyInstance: create)
    ..aOM<AuthMethod>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Authentication', protoName: 'Authentication', subBuilder: AuthMethod.create)
    ..hasRequiredFields = false
  ;

  RequestMFALink._() : super();
  factory RequestMFALink({
    AuthMethod authentication,
  }) {
    final _result = create();
    if (authentication != null) {
      _result.authentication = authentication;
    }
    return _result;
  }
  factory RequestMFALink.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestMFALink.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestMFALink clone() => RequestMFALink()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestMFALink copyWith(void Function(RequestMFALink) updates) => super.copyWith((message) => updates(message as RequestMFALink)) as RequestMFALink; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestMFALink create() => RequestMFALink._();
  RequestMFALink createEmptyInstance() => create();
  static $pb.PbList<RequestMFALink> createRepeated() => $pb.PbList<RequestMFALink>();
  @$core.pragma('dart2js:noInline')
  static RequestMFALink getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestMFALink>(create);
  static RequestMFALink _defaultInstance;

  @$pb.TagNumber(1)
  AuthMethod get authentication => $_getN(0);
  @$pb.TagNumber(1)
  set authentication(AuthMethod v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthentication() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthentication() => clearField(1);
  @$pb.TagNumber(1)
  AuthMethod ensureAuthentication() => $_ensure(0);
}

class MFALink extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MFALink', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Link', protoName: 'Link')
    ..hasRequiredFields = false
  ;

  MFALink._() : super();
  factory MFALink({
    $core.String link,
  }) {
    final _result = create();
    if (link != null) {
      _result.link = link;
    }
    return _result;
  }
  factory MFALink.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MFALink.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MFALink clone() => MFALink()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MFALink copyWith(void Function(MFALink) updates) => super.copyWith((message) => updates(message as MFALink)) as MFALink; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MFALink create() => MFALink._();
  MFALink createEmptyInstance() => create();
  static $pb.PbList<MFALink> createRepeated() => $pb.PbList<MFALink>();
  @$core.pragma('dart2js:noInline')
  static MFALink getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MFALink>(create);
  static MFALink _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get link => $_getSZ(0);
  @$pb.TagNumber(1)
  set link($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLink() => $_has(0);
  @$pb.TagNumber(1)
  void clearLink() => clearField(1);
}

class ChangeUsernameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChangeUsernameRequest', createEmptyInstance: create)
    ..aOM<AuthMethod>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Authentication', protoName: 'Authentication', subBuilder: AuthMethod.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Username', protoName: 'Username')
    ..hasRequiredFields = false
  ;

  ChangeUsernameRequest._() : super();
  factory ChangeUsernameRequest({
    AuthMethod authentication,
    $core.String username,
  }) {
    final _result = create();
    if (authentication != null) {
      _result.authentication = authentication;
    }
    if (username != null) {
      _result.username = username;
    }
    return _result;
  }
  factory ChangeUsernameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangeUsernameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChangeUsernameRequest clone() => ChangeUsernameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChangeUsernameRequest copyWith(void Function(ChangeUsernameRequest) updates) => super.copyWith((message) => updates(message as ChangeUsernameRequest)) as ChangeUsernameRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangeUsernameRequest create() => ChangeUsernameRequest._();
  ChangeUsernameRequest createEmptyInstance() => create();
  static $pb.PbList<ChangeUsernameRequest> createRepeated() => $pb.PbList<ChangeUsernameRequest>();
  @$core.pragma('dart2js:noInline')
  static ChangeUsernameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangeUsernameRequest>(create);
  static ChangeUsernameRequest _defaultInstance;

  @$pb.TagNumber(1)
  AuthMethod get authentication => $_getN(0);
  @$pb.TagNumber(1)
  set authentication(AuthMethod v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthentication() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthentication() => clearField(1);
  @$pb.TagNumber(1)
  AuthMethod ensureAuthentication() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);
}

class ChangePasswordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChangePasswordRequest', createEmptyInstance: create)
    ..aOM<Password>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Authentication', protoName: 'Authentication', subBuilder: Password.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Password', protoName: 'Password')
    ..hasRequiredFields = false
  ;

  ChangePasswordRequest._() : super();
  factory ChangePasswordRequest({
    Password authentication,
    $core.String password,
  }) {
    final _result = create();
    if (authentication != null) {
      _result.authentication = authentication;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory ChangePasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangePasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChangePasswordRequest clone() => ChangePasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChangePasswordRequest copyWith(void Function(ChangePasswordRequest) updates) => super.copyWith((message) => updates(message as ChangePasswordRequest)) as ChangePasswordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangePasswordRequest create() => ChangePasswordRequest._();
  ChangePasswordRequest createEmptyInstance() => create();
  static $pb.PbList<ChangePasswordRequest> createRepeated() => $pb.PbList<ChangePasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static ChangePasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangePasswordRequest>(create);
  static ChangePasswordRequest _defaultInstance;

  @$pb.TagNumber(1)
  Password get authentication => $_getN(0);
  @$pb.TagNumber(1)
  set authentication(Password v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthentication() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthentication() => clearField(1);
  @$pb.TagNumber(1)
  Password ensureAuthentication() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}


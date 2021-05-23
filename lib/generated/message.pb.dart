///
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $0;
import 'google/protobuf/timestamp.pb.dart' as $2;

class CreateMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateMessage', createEmptyInstance: create)
    ..aOM<$0.AuthMethod>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Authentication', protoName: 'Authentication', subBuilder: $0.AuthMethod.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Content', protoName: 'Content')
    ..hasRequiredFields = false
  ;

  CreateMessage._() : super();
  factory CreateMessage({
    $0.AuthMethod authentication,
    $core.String content,
  }) {
    final _result = create();
    if (authentication != null) {
      _result.authentication = authentication;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory CreateMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateMessage clone() => CreateMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateMessage copyWith(void Function(CreateMessage) updates) => super.copyWith((message) => updates(message as CreateMessage)) as CreateMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateMessage create() => CreateMessage._();
  CreateMessage createEmptyInstance() => create();
  static $pb.PbList<CreateMessage> createRepeated() => $pb.PbList<CreateMessage>();
  @$core.pragma('dart2js:noInline')
  static CreateMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateMessage>(create);
  static CreateMessage _defaultInstance;

  @$pb.TagNumber(1)
  $0.AuthMethod get authentication => $_getN(0);
  @$pb.TagNumber(1)
  set authentication($0.AuthMethod v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthentication() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthentication() => clearField(1);
  @$pb.TagNumber(1)
  $0.AuthMethod ensureAuthentication() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
}

class Message extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Message', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MessageID', protoName: 'MessageID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID', protoName: 'UserID')
    ..aOM<$2.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SentAt', protoName: 'SentAt', subBuilder: $2.Timestamp.create)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Content', protoName: 'Content')
    ..hasRequiredFields = false
  ;

  Message._() : super();
  factory Message({
    $core.String messageID,
    $core.String userID,
    $2.Timestamp sentAt,
    $core.String content,
  }) {
    final _result = create();
    if (messageID != null) {
      _result.messageID = messageID;
    }
    if (userID != null) {
      _result.userID = userID;
    }
    if (sentAt != null) {
      _result.sentAt = sentAt;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Message clone() => Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message)) as Message; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get messageID => $_getSZ(0);
  @$pb.TagNumber(1)
  set messageID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageID() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userID => $_getSZ(1);
  @$pb.TagNumber(2)
  set userID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserID() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserID() => clearField(2);

  @$pb.TagNumber(7)
  $2.Timestamp get sentAt => $_getN(2);
  @$pb.TagNumber(7)
  set sentAt($2.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSentAt() => $_has(2);
  @$pb.TagNumber(7)
  void clearSentAt() => clearField(7);
  @$pb.TagNumber(7)
  $2.Timestamp ensureSentAt() => $_ensure(2);

  @$pb.TagNumber(8)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(8)
  set content($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(8)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(8)
  void clearContent() => clearField(8);
}

class MessageHistory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageHistory', createEmptyInstance: create)
    ..pc<Message>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Messages', $pb.PbFieldType.PM, protoName: 'Messages', subBuilder: Message.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'NumberOfMessages', protoName: 'NumberOfMessages')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Pages', $pb.PbFieldType.O3, protoName: 'Pages')
    ..hasRequiredFields = false
  ;

  MessageHistory._() : super();
  factory MessageHistory({
    $core.Iterable<Message> messages,
    $fixnum.Int64 numberOfMessages,
    $core.int pages,
  }) {
    final _result = create();
    if (messages != null) {
      _result.messages.addAll(messages);
    }
    if (numberOfMessages != null) {
      _result.numberOfMessages = numberOfMessages;
    }
    if (pages != null) {
      _result.pages = pages;
    }
    return _result;
  }
  factory MessageHistory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageHistory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageHistory clone() => MessageHistory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageHistory copyWith(void Function(MessageHistory) updates) => super.copyWith((message) => updates(message as MessageHistory)) as MessageHistory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageHistory create() => MessageHistory._();
  MessageHistory createEmptyInstance() => create();
  static $pb.PbList<MessageHistory> createRepeated() => $pb.PbList<MessageHistory>();
  @$core.pragma('dart2js:noInline')
  static MessageHistory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageHistory>(create);
  static MessageHistory _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Message> get messages => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get numberOfMessages => $_getI64(1);
  @$pb.TagNumber(2)
  set numberOfMessages($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumberOfMessages() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumberOfMessages() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get pages => $_getIZ(2);
  @$pb.TagNumber(3)
  set pages($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPages() => $_has(2);
  @$pb.TagNumber(3)
  void clearPages() => clearField(3);
}

class RequestMessageHistory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestMessageHistory', createEmptyInstance: create)
    ..aOM<$0.AuthMethod>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Authentication', protoName: 'Authentication', subBuilder: $0.AuthMethod.create)
    ..aOM<$2.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'LastMessageTime', protoName: 'LastMessageTime', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  RequestMessageHistory._() : super();
  factory RequestMessageHistory({
    $0.AuthMethod authentication,
    $2.Timestamp lastMessageTime,
  }) {
    final _result = create();
    if (authentication != null) {
      _result.authentication = authentication;
    }
    if (lastMessageTime != null) {
      _result.lastMessageTime = lastMessageTime;
    }
    return _result;
  }
  factory RequestMessageHistory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestMessageHistory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestMessageHistory clone() => RequestMessageHistory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestMessageHistory copyWith(void Function(RequestMessageHistory) updates) => super.copyWith((message) => updates(message as RequestMessageHistory)) as RequestMessageHistory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestMessageHistory create() => RequestMessageHistory._();
  RequestMessageHistory createEmptyInstance() => create();
  static $pb.PbList<RequestMessageHistory> createRepeated() => $pb.PbList<RequestMessageHistory>();
  @$core.pragma('dart2js:noInline')
  static RequestMessageHistory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestMessageHistory>(create);
  static RequestMessageHistory _defaultInstance;

  @$pb.TagNumber(1)
  $0.AuthMethod get authentication => $_getN(0);
  @$pb.TagNumber(1)
  set authentication($0.AuthMethod v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthentication() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthentication() => clearField(1);
  @$pb.TagNumber(1)
  $0.AuthMethod ensureAuthentication() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.Timestamp get lastMessageTime => $_getN(1);
  @$pb.TagNumber(2)
  set lastMessageTime($2.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastMessageTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastMessageTime() => clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureLastMessageTime() => $_ensure(1);
}


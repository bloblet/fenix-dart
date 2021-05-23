///
//  Generated code. Do not modify.
//  source: message.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createMessageDescriptor instead')
const CreateMessage$json = const {
  '1': 'CreateMessage',
  '2': const [
    const {'1': 'Authentication', '3': 1, '4': 1, '5': 11, '6': '.AuthMethod', '10': 'Authentication'},
    const {'1': 'Content', '3': 2, '4': 1, '5': 9, '10': 'Content'},
  ],
};

/// Descriptor for `CreateMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createMessageDescriptor = $convert.base64Decode('Cg1DcmVhdGVNZXNzYWdlEjMKDkF1dGhlbnRpY2F0aW9uGAEgASgLMgsuQXV0aE1ldGhvZFIOQXV0aGVudGljYXRpb24SGAoHQ29udGVudBgCIAEoCVIHQ29udGVudA==');
@$core.Deprecated('Use messageDescriptor instead')
const Message$json = const {
  '1': 'Message',
  '2': const [
    const {'1': 'MessageID', '3': 1, '4': 1, '5': 9, '10': 'MessageID'},
    const {'1': 'UserID', '3': 2, '4': 1, '5': 9, '10': 'UserID'},
    const {'1': 'SentAt', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'SentAt'},
    const {'1': 'Content', '3': 8, '4': 1, '5': 9, '10': 'Content'},
  ],
  '9': const [
    const {'1': 3, '2': 7},
    const {'1': 9, '2': 10},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode('CgdNZXNzYWdlEhwKCU1lc3NhZ2VJRBgBIAEoCVIJTWVzc2FnZUlEEhYKBlVzZXJJRBgCIAEoCVIGVXNlcklEEjIKBlNlbnRBdBgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSBlNlbnRBdBIYCgdDb250ZW50GAggASgJUgdDb250ZW50SgQIAxAHSgQICRAK');
@$core.Deprecated('Use messageHistoryDescriptor instead')
const MessageHistory$json = const {
  '1': 'MessageHistory',
  '2': const [
    const {'1': 'Messages', '3': 1, '4': 3, '5': 11, '6': '.Message', '10': 'Messages'},
    const {'1': 'NumberOfMessages', '3': 2, '4': 1, '5': 3, '10': 'NumberOfMessages'},
    const {'1': 'Pages', '3': 3, '4': 1, '5': 5, '10': 'Pages'},
  ],
};

/// Descriptor for `MessageHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageHistoryDescriptor = $convert.base64Decode('Cg5NZXNzYWdlSGlzdG9yeRIkCghNZXNzYWdlcxgBIAMoCzIILk1lc3NhZ2VSCE1lc3NhZ2VzEioKEE51bWJlck9mTWVzc2FnZXMYAiABKANSEE51bWJlck9mTWVzc2FnZXMSFAoFUGFnZXMYAyABKAVSBVBhZ2Vz');
@$core.Deprecated('Use requestMessageHistoryDescriptor instead')
const RequestMessageHistory$json = const {
  '1': 'RequestMessageHistory',
  '2': const [
    const {'1': 'Authentication', '3': 1, '4': 1, '5': 11, '6': '.AuthMethod', '10': 'Authentication'},
    const {'1': 'LastMessageTime', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'LastMessageTime'},
  ],
};

/// Descriptor for `RequestMessageHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestMessageHistoryDescriptor = $convert.base64Decode('ChVSZXF1ZXN0TWVzc2FnZUhpc3RvcnkSMwoOQXV0aGVudGljYXRpb24YASABKAsyCy5BdXRoTWV0aG9kUg5BdXRoZW50aWNhdGlvbhJECg9MYXN0TWVzc2FnZVRpbWUYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg9MYXN0TWVzc2FnZVRpbWU=');

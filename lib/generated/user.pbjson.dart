///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'UserID', '3': 1, '4': 1, '5': 9, '10': 'UserID'},
    const {'1': 'Username', '3': 2, '4': 1, '5': 9, '10': 'Username'},
    const {'1': 'Discriminator', '3': 3, '4': 1, '5': 9, '10': 'Discriminator'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEhYKBlVzZXJJRBgBIAEoCVIGVXNlcklEEhoKCFVzZXJuYW1lGAIgASgJUghVc2VybmFtZRIkCg1EaXNjcmltaW5hdG9yGAMgASgJUg1EaXNjcmltaW5hdG9y');
@$core.Deprecated('Use requestUserDescriptor instead')
const RequestUser$json = const {
  '1': 'RequestUser',
  '2': const [
    const {'1': 'authentication', '3': 1, '4': 1, '5': 11, '6': '.AuthMethod', '10': 'authentication'},
    const {'1': 'UserID', '3': 2, '4': 1, '5': 9, '10': 'UserID'},
  ],
};

/// Descriptor for `RequestUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestUserDescriptor = $convert.base64Decode('CgtSZXF1ZXN0VXNlchIzCg5hdXRoZW50aWNhdGlvbhgBIAEoCzILLkF1dGhNZXRob2RSDmF1dGhlbnRpY2F0aW9uEhYKBlVzZXJJRBgCIAEoCVIGVXNlcklE');
@$core.Deprecated('Use tokenDescriptor instead')
const Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'Token', '3': 1, '4': 1, '5': 9, '10': 'Token'},
    const {'1': 'TokenID', '3': 2, '4': 1, '5': 9, '10': 'TokenID'},
    const {'1': 'ExpirationDate', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'ExpirationDate'},
  ],
};

/// Descriptor for `Token`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenDescriptor = $convert.base64Decode('CgVUb2tlbhIUCgVUb2tlbhgBIAEoCVIFVG9rZW4SGAoHVG9rZW5JRBgCIAEoCVIHVG9rZW5JRBJCCg5FeHBpcmF0aW9uRGF0ZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDkV4cGlyYXRpb25EYXRl');
@$core.Deprecated('Use passwordDescriptor instead')
const Password$json = const {
  '1': 'Password',
  '2': const [
    const {'1': 'Password', '3': 1, '4': 1, '5': 9, '10': 'Password'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `Password`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passwordDescriptor = $convert.base64Decode('CghQYXNzd29yZBIaCghQYXNzd29yZBgBIAEoCVIIUGFzc3dvcmQSFAoFZW1haWwYAiABKAlSBWVtYWls');
@$core.Deprecated('Use authMethodDescriptor instead')
const AuthMethod$json = const {
  '1': 'AuthMethod',
  '2': const [
    const {'1': 'UserID', '3': 1, '4': 1, '5': 9, '10': 'UserID'},
    const {'1': 'Token', '3': 2, '4': 1, '5': 11, '6': '.Token', '10': 'Token'},
    const {'1': 'Password', '3': 3, '4': 1, '5': 11, '6': '.Password', '10': 'Password'},
  ],
};

/// Descriptor for `AuthMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authMethodDescriptor = $convert.base64Decode('CgpBdXRoTWV0aG9kEhYKBlVzZXJJRBgBIAEoCVIGVXNlcklEEhwKBVRva2VuGAIgASgLMgYuVG9rZW5SBVRva2VuEiUKCFBhc3N3b3JkGAMgASgLMgkuUGFzc3dvcmRSCFBhc3N3b3Jk');
@$core.Deprecated('Use requestUserCreationDescriptor instead')
const RequestUserCreation$json = const {
  '1': 'RequestUserCreation',
  '2': const [
    const {'1': 'Username', '3': 1, '4': 1, '5': 9, '10': 'Username'},
    const {'1': 'Password', '3': 2, '4': 1, '5': 9, '10': 'Password'},
    const {'1': 'Email', '3': 3, '4': 1, '5': 9, '10': 'Email'},
  ],
};

/// Descriptor for `RequestUserCreation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestUserCreationDescriptor = $convert.base64Decode('ChNSZXF1ZXN0VXNlckNyZWF0aW9uEhoKCFVzZXJuYW1lGAEgASgJUghVc2VybmFtZRIaCghQYXNzd29yZBgCIAEoCVIIUGFzc3dvcmQSFAoFRW1haWwYAyABKAlSBUVtYWls');
@$core.Deprecated('Use userCreatedDescriptor instead')
const UserCreated$json = const {
  '1': 'UserCreated',
  '2': const [
    const {'1': 'User', '3': 1, '4': 1, '5': 11, '6': '.User', '10': 'User'},
    const {'1': 'Token', '3': 2, '4': 1, '5': 11, '6': '.Token', '10': 'Token'},
  ],
};

/// Descriptor for `UserCreated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userCreatedDescriptor = $convert.base64Decode('CgtVc2VyQ3JlYXRlZBIZCgRVc2VyGAEgASgLMgUuVXNlclIEVXNlchIcCgVUb2tlbhgCIAEoCzIGLlRva2VuUgVUb2tlbg==');
@$core.Deprecated('Use successDescriptor instead')
const Success$json = const {
  '1': 'Success',
};

/// Descriptor for `Success`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List successDescriptor = $convert.base64Decode('CgdTdWNjZXNz');
@$core.Deprecated('Use mFAStatusDescriptor instead')
const MFAStatus$json = const {
  '1': 'MFAStatus',
  '2': const [
    const {'1': 'Authentication', '3': 1, '4': 1, '5': 11, '6': '.AuthMethod', '10': 'Authentication'},
    const {'1': 'Status', '3': 2, '4': 1, '5': 8, '10': 'Status'},
  ],
};

/// Descriptor for `MFAStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mFAStatusDescriptor = $convert.base64Decode('CglNRkFTdGF0dXMSMwoOQXV0aGVudGljYXRpb24YASABKAsyCy5BdXRoTWV0aG9kUg5BdXRoZW50aWNhdGlvbhIWCgZTdGF0dXMYAiABKAhSBlN0YXR1cw==');
@$core.Deprecated('Use requestMFALinkDescriptor instead')
const RequestMFALink$json = const {
  '1': 'RequestMFALink',
  '2': const [
    const {'1': 'Authentication', '3': 1, '4': 1, '5': 11, '6': '.AuthMethod', '10': 'Authentication'},
  ],
};

/// Descriptor for `RequestMFALink`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestMFALinkDescriptor = $convert.base64Decode('Cg5SZXF1ZXN0TUZBTGluaxIzCg5BdXRoZW50aWNhdGlvbhgBIAEoCzILLkF1dGhNZXRob2RSDkF1dGhlbnRpY2F0aW9u');
@$core.Deprecated('Use mFALinkDescriptor instead')
const MFALink$json = const {
  '1': 'MFALink',
  '2': const [
    const {'1': 'Link', '3': 1, '4': 1, '5': 9, '10': 'Link'},
  ],
};

/// Descriptor for `MFALink`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mFALinkDescriptor = $convert.base64Decode('CgdNRkFMaW5rEhIKBExpbmsYASABKAlSBExpbms=');
@$core.Deprecated('Use changeUsernameRequestDescriptor instead')
const ChangeUsernameRequest$json = const {
  '1': 'ChangeUsernameRequest',
  '2': const [
    const {'1': 'Authentication', '3': 1, '4': 1, '5': 11, '6': '.AuthMethod', '10': 'Authentication'},
    const {'1': 'Username', '3': 2, '4': 1, '5': 9, '10': 'Username'},
  ],
};

/// Descriptor for `ChangeUsernameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changeUsernameRequestDescriptor = $convert.base64Decode('ChVDaGFuZ2VVc2VybmFtZVJlcXVlc3QSMwoOQXV0aGVudGljYXRpb24YASABKAsyCy5BdXRoTWV0aG9kUg5BdXRoZW50aWNhdGlvbhIaCghVc2VybmFtZRgCIAEoCVIIVXNlcm5hbWU=');
@$core.Deprecated('Use changePasswordRequestDescriptor instead')
const ChangePasswordRequest$json = const {
  '1': 'ChangePasswordRequest',
  '2': const [
    const {'1': 'Authentication', '3': 1, '4': 1, '5': 11, '6': '.Password', '10': 'Authentication'},
    const {'1': 'Password', '3': 2, '4': 1, '5': 9, '10': 'Password'},
  ],
};

/// Descriptor for `ChangePasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changePasswordRequestDescriptor = $convert.base64Decode('ChVDaGFuZ2VQYXNzd29yZFJlcXVlc3QSMQoOQXV0aGVudGljYXRpb24YASABKAsyCS5QYXNzd29yZFIOQXV0aGVudGljYXRpb24SGgoIUGFzc3dvcmQYAiABKAlSCFBhc3N3b3Jk');

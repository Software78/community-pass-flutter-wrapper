// Copyright (c) 2022 Mastercard. All rights reserved.
// Use of this source code is governed by a Apache License, Version 2.0 that can be
// found in the LICENSE file.
// Autogenerated from Pigeon (v10.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

enum EnrolmentStatus {
  EXISTING,
  NEW,
}

enum ResponseStatus {
  SUCCESS,
  FAIL,
}

class SaveBiometricConsentResult {
  SaveBiometricConsentResult({
    required this.consentID,
    required this.responseStatus,
  });

  String consentID;

  ResponseStatus responseStatus;

  Object encode() {
    return <Object?>[
      consentID,
      responseStatus.index,
    ];
  }

  static SaveBiometricConsentResult decode(Object result) {
    result as List<Object?>;
    return SaveBiometricConsentResult(
      consentID: result[0]! as String,
      responseStatus: ResponseStatus.values[result[1]! as int],
    );
  }
}

class RegisterUserWithBiometricsResult {
  RegisterUserWithBiometricsResult({
    required this.bioToken,
    required this.programGUID,
    required this.rID,
    required this.enrolmentStatus,
  });

  String bioToken;

  String programGUID;

  String rID;

  EnrolmentStatus enrolmentStatus;

  Object encode() {
    return <Object?>[
      bioToken,
      programGUID,
      rID,
      enrolmentStatus.index,
    ];
  }

  static RegisterUserWithBiometricsResult decode(Object result) {
    result as List<Object?>;
    return RegisterUserWithBiometricsResult(
      bioToken: result[0]! as String,
      programGUID: result[1]! as String,
      rID: result[2]! as String,
      enrolmentStatus: EnrolmentStatus.values[result[3]! as int],
    );
  }
}

class RegisterBasicUserResult {
  RegisterBasicUserResult({
    required this.rID,
  });

  String rID;

  Object encode() {
    return <Object?>[
      rID,
    ];
  }

  static RegisterBasicUserResult decode(Object result) {
    result as List<Object?>;
    return RegisterBasicUserResult(
      rID: result[0]! as String,
    );
  }
}

class WriteProfileResult {
  WriteProfileResult({
    required this.consumerDeviceNumber,
  });

  String consumerDeviceNumber;

  Object encode() {
    return <Object?>[
      consumerDeviceNumber,
    ];
  }

  static WriteProfileResult decode(Object result) {
    result as List<Object?>;
    return WriteProfileResult(
      consumerDeviceNumber: result[0]! as String,
    );
  }
}

class WritePasscodeResult {
  WritePasscodeResult({
    required this.responseStatus,
  });

  ResponseStatus responseStatus;

  Object encode() {
    return <Object?>[
      responseStatus.index,
    ];
  }

  static WritePasscodeResult decode(Object result) {
    result as List<Object?>;
    return WritePasscodeResult(
      responseStatus: ResponseStatus.values[result[0]! as int],
    );
  }
}

class WriteProgramSpaceResult {
  WriteProgramSpaceResult({
    required this.isSuccess,
  });

  bool isSuccess;

  Object encode() {
    return <Object?>[
      isSuccess,
    ];
  }

  static WriteProgramSpaceResult decode(Object result) {
    result as List<Object?>;
    return WriteProgramSpaceResult(
      isSuccess: result[0]! as bool,
    );
  }
}

class ReadProgramSpaceResult {
  ReadProgramSpaceResult({
    required this.programSpaceData,
  });

  String programSpaceData;

  Object encode() {
    return <Object?>[
      programSpaceData,
    ];
  }

  static ReadProgramSpaceResult decode(Object result) {
    result as List<Object?>;
    return ReadProgramSpaceResult(
      programSpaceData: result[0]! as String,
    );
  }
}

class VerifyPasscodeResult {
  VerifyPasscodeResult({
    required this.status,
    required this.rID,
    required this.retryCount, required bool isSuccess,
  });

  bool status;

  String rID;

  int retryCount;

  Object encode() {
    return <Object?>[
      status,
      rID,
      retryCount,
    ];
  }

  static VerifyPasscodeResult decode(Object result) {
    result as List<Object?>;
    return VerifyPasscodeResult(
      status: result[0]! as bool,
      rID: result[1]! as String,
      retryCount: result[2]! as int, isSuccess: result[3]! as bool,
    );
  }
}

class _CommunityPassApiCodec extends StandardMessageCodec {
  const _CommunityPassApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is ReadProgramSpaceResult) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is RegisterBasicUserResult) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is RegisterUserWithBiometricsResult) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is SaveBiometricConsentResult) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is VerifyPasscodeResult) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else if (value is WritePasscodeResult) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else if (value is WriteProfileResult) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else if (value is WriteProgramSpaceResult) {
      buffer.putUint8(135);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128: 
        return ReadProgramSpaceResult.decode(readValue(buffer)!);
      case 129: 
        return RegisterBasicUserResult.decode(readValue(buffer)!);
      case 130: 
        return RegisterUserWithBiometricsResult.decode(readValue(buffer)!);
      case 131: 
        return SaveBiometricConsentResult.decode(readValue(buffer)!);
      case 132: 
        return VerifyPasscodeResult.decode(readValue(buffer)!);
      case 133: 
        return WritePasscodeResult.decode(readValue(buffer)!);
      case 134: 
        return WriteProfileResult.decode(readValue(buffer)!);
      case 135: 
        return WriteProgramSpaceResult.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class CommunityPassApi {
  /// Constructor for [CommunityPassApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  CommunityPassApi({BinaryMessenger? binaryMessenger})
      : _binaryMessenger = binaryMessenger;
  final BinaryMessenger? _binaryMessenger;

  static const MessageCodec<Object?> codec = _CommunityPassApiCodec();

  Future<SaveBiometricConsentResult> saveBiometricConsent(String arg_reliantGUID, String arg_programGUID, bool arg_consumerConsentValue) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.CommunityPassApi.saveBiometricConsent', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_reliantGUID, arg_programGUID, arg_consumerConsentValue]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as SaveBiometricConsentResult?)!;
    }
  }

  Future<RegisterUserWithBiometricsResult> getRegisterUserWithBiometrics(String arg_reliantGUID, String arg_programGUID, String arg_consentID) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.CommunityPassApi.getRegisterUserWithBiometrics', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_reliantGUID, arg_programGUID, arg_consentID]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as RegisterUserWithBiometricsResult?)!;
    }
  }

  Future<RegisterBasicUserResult> getRegisterBasicUser(String arg_reliantGUID, String arg_programGUID) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.CommunityPassApi.getRegisterBasicUser', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_reliantGUID, arg_programGUID]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as RegisterBasicUserResult?)!;
    }
  }

  Future<WriteProfileResult> getWriteProfile(String arg_reliantGUID, String arg_programGUID, String arg_rID, bool arg_overwriteCard) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.CommunityPassApi.getWriteProfile', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_reliantGUID, arg_programGUID, arg_rID, arg_overwriteCard]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as WriteProfileResult?)!;
    }
  }

  Future<WritePasscodeResult> getWritePasscode(String arg_reliantGUID, String arg_programGUID, String arg_rID, String arg_passcode) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.CommunityPassApi.getWritePasscode', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_reliantGUID, arg_programGUID, arg_rID, arg_passcode]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as WritePasscodeResult?)!;
    }
  }

  Future<WriteProgramSpaceResult> getWriteProgramSpace(String arg_reliantGUID, String arg_programGUID, String arg_rID, String arg_programSpaceData, bool arg_encryptData) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.CommunityPassApi.getWriteProgramSpace', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_reliantGUID, arg_programGUID, arg_rID, arg_programSpaceData, arg_encryptData]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as WriteProgramSpaceResult?)!;
    }
  }

  Future<ReadProgramSpaceResult> getReadProgramSpace(String arg_reliantGUID, String arg_programGUID, String arg_rID, bool arg_decryptData) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.CommunityPassApi.getReadProgramSpace', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_reliantGUID, arg_programGUID, arg_rID, arg_decryptData]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as ReadProgramSpaceResult?)!;
    }
  }

  Future<VerifyPasscodeResult> getVerifyPasscode(String arg_reliantGUID, String arg_programGUID, String arg_passcode) async {
    final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
        'dev.flutter.pigeon.CommunityPassApi.getVerifyPasscode', codec,
        binaryMessenger: _binaryMessenger);
    final List<Object?>? replyList =
        await channel.send(<Object?>[arg_reliantGUID, arg_programGUID, arg_passcode]) as List<Object?>?;
    if (replyList == null) {
      throw PlatformException(
        code: 'channel-error',
        message: 'Unable to establish connection on channel.',
      );
    } else if (replyList.length > 1) {
      throw PlatformException(
        code: replyList[0]! as String,
        message: replyList[1] as String?,
        details: replyList[2],
      );
    } else if (replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (replyList[0] as VerifyPasscodeResult?)!;
    }
  }
}

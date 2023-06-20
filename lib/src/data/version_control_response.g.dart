// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_control_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VersionControlResponse _$$_VersionControlResponseFromJson(
        Map<String, dynamic> json) =>
    _$_VersionControlResponse(
      versionControlResponseData:
          (json['versionControlResponseData'] as List<dynamic>?)
                  ?.map((e) => VersionControlResponseData.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const [],
    );

Map<String, dynamic> _$$_VersionControlResponseToJson(
        _$_VersionControlResponse instance) =>
    <String, dynamic>{
      'versionControlResponseData': instance.versionControlResponseData,
    };

_$_VersionControlResponseData _$$_VersionControlResponseDataFromJson(
        Map<String, dynamic> json) =>
    _$_VersionControlResponseData(
      type: json['type'] as String?,
      version: json['version'] as String?,
      build: json['build'] as int?,
    );

Map<String, dynamic> _$$_VersionControlResponseDataToJson(
        _$_VersionControlResponseData instance) =>
    <String, dynamic>{
      'type': instance.type,
      'version': instance.version,
      'build': instance.build,
    };

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'version_control_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VersionControlResponse _$VersionControlResponseFromJson(
    Map<String, dynamic> json) {
  return _VersionControlResponse.fromJson(json);
}

/// @nodoc
mixin _$VersionControlResponse {
  List<VersionControlResponseData> get versionControlResponseData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionControlResponseCopyWith<VersionControlResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionControlResponseCopyWith<$Res> {
  factory $VersionControlResponseCopyWith(VersionControlResponse value,
          $Res Function(VersionControlResponse) then) =
      _$VersionControlResponseCopyWithImpl<$Res, VersionControlResponse>;
  @useResult
  $Res call({List<VersionControlResponseData> versionControlResponseData});
}

/// @nodoc
class _$VersionControlResponseCopyWithImpl<$Res,
        $Val extends VersionControlResponse>
    implements $VersionControlResponseCopyWith<$Res> {
  _$VersionControlResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? versionControlResponseData = null,
  }) {
    return _then(_value.copyWith(
      versionControlResponseData: null == versionControlResponseData
          ? _value.versionControlResponseData
          : versionControlResponseData // ignore: cast_nullable_to_non_nullable
              as List<VersionControlResponseData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VersionControlResponseCopyWith<$Res>
    implements $VersionControlResponseCopyWith<$Res> {
  factory _$$_VersionControlResponseCopyWith(_$_VersionControlResponse value,
          $Res Function(_$_VersionControlResponse) then) =
      __$$_VersionControlResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VersionControlResponseData> versionControlResponseData});
}

/// @nodoc
class __$$_VersionControlResponseCopyWithImpl<$Res>
    extends _$VersionControlResponseCopyWithImpl<$Res,
        _$_VersionControlResponse>
    implements _$$_VersionControlResponseCopyWith<$Res> {
  __$$_VersionControlResponseCopyWithImpl(_$_VersionControlResponse _value,
      $Res Function(_$_VersionControlResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? versionControlResponseData = null,
  }) {
    return _then(_$_VersionControlResponse(
      versionControlResponseData: null == versionControlResponseData
          ? _value._versionControlResponseData
          : versionControlResponseData // ignore: cast_nullable_to_non_nullable
              as List<VersionControlResponseData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionControlResponse extends _VersionControlResponse {
  const _$_VersionControlResponse(
      {final List<VersionControlResponseData> versionControlResponseData =
          const []})
      : _versionControlResponseData = versionControlResponseData,
        super._();

  factory _$_VersionControlResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VersionControlResponseFromJson(json);

  final List<VersionControlResponseData> _versionControlResponseData;
  @override
  @JsonKey()
  List<VersionControlResponseData> get versionControlResponseData {
    if (_versionControlResponseData is EqualUnmodifiableListView)
      return _versionControlResponseData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_versionControlResponseData);
  }

  @override
  String toString() {
    return 'VersionControlResponse(versionControlResponseData: $versionControlResponseData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersionControlResponse &&
            const DeepCollectionEquality().equals(
                other._versionControlResponseData,
                _versionControlResponseData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_versionControlResponseData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionControlResponseCopyWith<_$_VersionControlResponse> get copyWith =>
      __$$_VersionControlResponseCopyWithImpl<_$_VersionControlResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionControlResponseToJson(
      this,
    );
  }
}

abstract class _VersionControlResponse extends VersionControlResponse {
  const factory _VersionControlResponse(
          {final List<VersionControlResponseData> versionControlResponseData}) =
      _$_VersionControlResponse;
  const _VersionControlResponse._() : super._();

  factory _VersionControlResponse.fromJson(Map<String, dynamic> json) =
      _$_VersionControlResponse.fromJson;

  @override
  List<VersionControlResponseData> get versionControlResponseData;
  @override
  @JsonKey(ignore: true)
  _$$_VersionControlResponseCopyWith<_$_VersionControlResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

VersionControlResponseData _$VersionControlResponseDataFromJson(
    Map<String, dynamic> json) {
  return _VersionControlResponseData.fromJson(json);
}

/// @nodoc
mixin _$VersionControlResponseData {
  String? get type => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  int? get build => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionControlResponseDataCopyWith<VersionControlResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionControlResponseDataCopyWith<$Res> {
  factory $VersionControlResponseDataCopyWith(VersionControlResponseData value,
          $Res Function(VersionControlResponseData) then) =
      _$VersionControlResponseDataCopyWithImpl<$Res,
          VersionControlResponseData>;
  @useResult
  $Res call({String? type, String? version, int? build});
}

/// @nodoc
class _$VersionControlResponseDataCopyWithImpl<$Res,
        $Val extends VersionControlResponseData>
    implements $VersionControlResponseDataCopyWith<$Res> {
  _$VersionControlResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? version = freezed,
    Object? build = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      build: freezed == build
          ? _value.build
          : build // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VersionControlResponseDataCopyWith<$Res>
    implements $VersionControlResponseDataCopyWith<$Res> {
  factory _$$_VersionControlResponseDataCopyWith(
          _$_VersionControlResponseData value,
          $Res Function(_$_VersionControlResponseData) then) =
      __$$_VersionControlResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? version, int? build});
}

/// @nodoc
class __$$_VersionControlResponseDataCopyWithImpl<$Res>
    extends _$VersionControlResponseDataCopyWithImpl<$Res,
        _$_VersionControlResponseData>
    implements _$$_VersionControlResponseDataCopyWith<$Res> {
  __$$_VersionControlResponseDataCopyWithImpl(
      _$_VersionControlResponseData _value,
      $Res Function(_$_VersionControlResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? version = freezed,
    Object? build = freezed,
  }) {
    return _then(_$_VersionControlResponseData(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      build: freezed == build
          ? _value.build
          : build // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VersionControlResponseData extends _VersionControlResponseData {
  const _$_VersionControlResponseData({this.type, this.version, this.build})
      : super._();

  factory _$_VersionControlResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_VersionControlResponseDataFromJson(json);

  @override
  final String? type;
  @override
  final String? version;
  @override
  final int? build;

  @override
  String toString() {
    return 'VersionControlResponseData(type: $type, version: $version, build: $build)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VersionControlResponseData &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.build, build) || other.build == build));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, version, build);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VersionControlResponseDataCopyWith<_$_VersionControlResponseData>
      get copyWith => __$$_VersionControlResponseDataCopyWithImpl<
          _$_VersionControlResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VersionControlResponseDataToJson(
      this,
    );
  }
}

abstract class _VersionControlResponseData extends VersionControlResponseData {
  const factory _VersionControlResponseData(
      {final String? type,
      final String? version,
      final int? build}) = _$_VersionControlResponseData;
  const _VersionControlResponseData._() : super._();

  factory _VersionControlResponseData.fromJson(Map<String, dynamic> json) =
      _$_VersionControlResponseData.fromJson;

  @override
  String? get type;
  @override
  String? get version;
  @override
  int? get build;
  @override
  @JsonKey(ignore: true)
  _$$_VersionControlResponseDataCopyWith<_$_VersionControlResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

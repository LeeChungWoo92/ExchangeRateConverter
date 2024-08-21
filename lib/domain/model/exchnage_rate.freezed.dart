// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchnage_rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExchangeRate _$ExchangeRateFromJson(Map<String, dynamic> json) {
  return _ExchangeRate.fromJson(json);
}

/// @nodoc
mixin _$ExchangeRate {
  String? get result => throw _privateConstructorUsedError;
  String? get timeLastUpdateUtc => throw _privateConstructorUsedError;
  String? get baseCode => throw _privateConstructorUsedError;
  Map<String, double>? get conversionRates =>
      throw _privateConstructorUsedError;

  /// Serializes this ExchangeRate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExchangeRate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExchangeRateCopyWith<ExchangeRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRateCopyWith<$Res> {
  factory $ExchangeRateCopyWith(
          ExchangeRate value, $Res Function(ExchangeRate) then) =
      _$ExchangeRateCopyWithImpl<$Res, ExchangeRate>;
  @useResult
  $Res call(
      {String? result,
      String? timeLastUpdateUtc,
      String? baseCode,
      Map<String, double>? conversionRates});
}

/// @nodoc
class _$ExchangeRateCopyWithImpl<$Res, $Val extends ExchangeRate>
    implements $ExchangeRateCopyWith<$Res> {
  _$ExchangeRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExchangeRate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? timeLastUpdateUtc = freezed,
    Object? baseCode = freezed,
    Object? conversionRates = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      timeLastUpdateUtc: freezed == timeLastUpdateUtc
          ? _value.timeLastUpdateUtc
          : timeLastUpdateUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      baseCode: freezed == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      conversionRates: freezed == conversionRates
          ? _value.conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExchangeRateImplCopyWith<$Res>
    implements $ExchangeRateCopyWith<$Res> {
  factory _$$ExchangeRateImplCopyWith(
          _$ExchangeRateImpl value, $Res Function(_$ExchangeRateImpl) then) =
      __$$ExchangeRateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? result,
      String? timeLastUpdateUtc,
      String? baseCode,
      Map<String, double>? conversionRates});
}

/// @nodoc
class __$$ExchangeRateImplCopyWithImpl<$Res>
    extends _$ExchangeRateCopyWithImpl<$Res, _$ExchangeRateImpl>
    implements _$$ExchangeRateImplCopyWith<$Res> {
  __$$ExchangeRateImplCopyWithImpl(
      _$ExchangeRateImpl _value, $Res Function(_$ExchangeRateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExchangeRate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? timeLastUpdateUtc = freezed,
    Object? baseCode = freezed,
    Object? conversionRates = freezed,
  }) {
    return _then(_$ExchangeRateImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      timeLastUpdateUtc: freezed == timeLastUpdateUtc
          ? _value.timeLastUpdateUtc
          : timeLastUpdateUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      baseCode: freezed == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      conversionRates: freezed == conversionRates
          ? _value._conversionRates
          : conversionRates // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExchangeRateImpl implements _ExchangeRate {
  const _$ExchangeRateImpl(
      {this.result,
      this.timeLastUpdateUtc,
      this.baseCode,
      final Map<String, double>? conversionRates})
      : _conversionRates = conversionRates;

  factory _$ExchangeRateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExchangeRateImplFromJson(json);

  @override
  final String? result;
  @override
  final String? timeLastUpdateUtc;
  @override
  final String? baseCode;
  final Map<String, double>? _conversionRates;
  @override
  Map<String, double>? get conversionRates {
    final value = _conversionRates;
    if (value == null) return null;
    if (_conversionRates is EqualUnmodifiableMapView) return _conversionRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ExchangeRate(result: $result, timeLastUpdateUtc: $timeLastUpdateUtc, baseCode: $baseCode, conversionRates: $conversionRates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeRateImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.timeLastUpdateUtc, timeLastUpdateUtc) ||
                other.timeLastUpdateUtc == timeLastUpdateUtc) &&
            (identical(other.baseCode, baseCode) ||
                other.baseCode == baseCode) &&
            const DeepCollectionEquality()
                .equals(other._conversionRates, _conversionRates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, result, timeLastUpdateUtc,
      baseCode, const DeepCollectionEquality().hash(_conversionRates));

  /// Create a copy of ExchangeRate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangeRateImplCopyWith<_$ExchangeRateImpl> get copyWith =>
      __$$ExchangeRateImplCopyWithImpl<_$ExchangeRateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExchangeRateImplToJson(
      this,
    );
  }
}

abstract class _ExchangeRate implements ExchangeRate {
  const factory _ExchangeRate(
      {final String? result,
      final String? timeLastUpdateUtc,
      final String? baseCode,
      final Map<String, double>? conversionRates}) = _$ExchangeRateImpl;

  factory _ExchangeRate.fromJson(Map<String, dynamic> json) =
      _$ExchangeRateImpl.fromJson;

  @override
  String? get result;
  @override
  String? get timeLastUpdateUtc;
  @override
  String? get baseCode;
  @override
  Map<String, double>? get conversionRates;

  /// Create a copy of ExchangeRate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExchangeRateImplCopyWith<_$ExchangeRateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

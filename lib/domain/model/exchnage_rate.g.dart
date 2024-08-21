// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchnage_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExchangeRateImpl _$$ExchangeRateImplFromJson(Map<String, dynamic> json) =>
    _$ExchangeRateImpl(
      result: json['result'] as String?,
      timeLastUpdateUtc: json['timeLastUpdateUtc'] as String?,
      baseCode: json['baseCode'] as String?,
      conversionRates: (json['conversionRates'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$ExchangeRateImplToJson(_$ExchangeRateImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'timeLastUpdateUtc': instance.timeLastUpdateUtc,
      'baseCode': instance.baseCode,
      'conversionRates': instance.conversionRates,
    };

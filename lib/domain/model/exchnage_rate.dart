import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchnage_rate.freezed.dart';

part 'exchnage_rate.g.dart';

@freezed
class ExchangeRate with _$ExchangeRate {
  const factory ExchangeRate({
    String? result,
    String? timeLastUpdateUtc,
    String? baseCode,
    Map<String, double>? conversionRates,
  }) = _ExchangeRate;

  factory ExchangeRate.fromJson(Map<String, Object?> json) =>
      _$ExchangeRateFromJson(json);
}

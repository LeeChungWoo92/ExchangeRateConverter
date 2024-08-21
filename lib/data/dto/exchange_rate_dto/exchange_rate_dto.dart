import 'conversion_rates.dart';

class ExchangeRateDto {
  String? result;
  String? documentation;
  String? termsOfUse;
  int? timeLastUpdateUnix;
  String? timeLastUpdateUtc;
  int? timeNextUpdateUnix;
  String? timeNextUpdateUtc;
  String? baseCode;
  ConversionRates? conversionRates;

  ExchangeRateDto({
    this.result,
    this.documentation,
    this.termsOfUse,
    this.timeLastUpdateUnix,
    this.timeLastUpdateUtc,
    this.timeNextUpdateUnix,
    this.timeNextUpdateUtc,
    this.baseCode,
    this.conversionRates,
  });

  factory ExchangeRateDto.fromJson(Map<String, dynamic> json) =>
      ExchangeRateDto(
        result: json['result'] as String?,
        documentation: json['documentation'] as String?,
        termsOfUse: json['terms_of_use'] as String?,
        timeLastUpdateUnix: json['time_last_update_unix'] as int?,
        timeLastUpdateUtc: json['time_last_update_utc'] as String?,
        timeNextUpdateUnix: json['time_next_update_unix'] as int?,
        timeNextUpdateUtc: json['time_next_update_utc'] as String?,
        baseCode: json['base_code'] as String?,
        conversionRates: json['conversion_rates'] == null
            ? null
            : ConversionRates.fromJson(
                json['conversion_rates'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'result': result,
        'documentation': documentation,
        'terms_of_use': termsOfUse,
        'time_last_update_unix': timeLastUpdateUnix,
        'time_last_update_utc': timeLastUpdateUtc,
        'time_next_update_unix': timeNextUpdateUnix,
        'time_next_update_utc': timeNextUpdateUtc,
        'base_code': baseCode,
        'conversion_rates': conversionRates?.toJson(),
      };
}

import 'package:exchange_rate_converter/data/dto/exchange_rate_dto/exchange_rate_dto.dart';
import 'package:exchange_rate_converter/domain/model/exchnage_rate.dart';

extension ExchangeRateDtoMapper on ExchangeRateDto {
  ExchangeRate toDomain() {
    return ExchangeRate(
      result: result,
      timeLastUpdateUtc: timeLastUpdateUtc,
      baseCode: baseCode,
      conversionRates: conversionRates
          ?.toJson()
          .map((key, value) => MapEntry(key, value.toDouble())),
    );
  }
}

import 'package:exchange_rate_converter/domain/model/exchnage_rate.dart';

abstract interface class ExchangeRateRepository {
  Future<ExchangeRate> getExchangeRates(String baseCode);
}
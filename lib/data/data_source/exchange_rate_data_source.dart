import 'package:exchange_rate_converter/domain/model/exchnage_rate.dart';

abstract interface class ExchangeRateDataSource {
  Future<ExchangeRate> getExchangeRates(String baseCode);
}

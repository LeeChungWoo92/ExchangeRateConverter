// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:exchange_rate_converter/data/data_source/exchange_rate_data_source.dart';
import 'package:exchange_rate_converter/domain/model/exchnage_rate.dart';
import 'package:exchange_rate_converter/domain/repository/exchange_rate_repository.dart';

class ExchangeRateRepositoryImpl implements ExchangeRateRepository {
  final ExchangeRateDataSource exchangeRateDataSource;
  ExchangeRateRepositoryImpl({
    required this.exchangeRateDataSource,
  });

  @override
  Future<ExchangeRate> getExchangeRates(String baseCode)  async {
    final response = await exchangeRateDataSource.getExchangeRates(baseCode);
    return response;
  }
}

import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:exchange_rate_converter/data/data_source/exchange_rate_data_source.dart';
import 'package:exchange_rate_converter/data/dto/exchange_rate_dto/exchange_rate_dto.dart';
import 'package:exchange_rate_converter/data/mapper/exchange_rate_dto_mapper.dart';
import 'package:exchange_rate_converter/domain/model/exchnage_rate.dart';
import 'package:http/http.dart' as http;

class ExchangeRateApiDataSource implements ExchangeRateDataSource {
  final String apiKey = dotenv.env['API_KEY']!;
  final String baseUrl;

  ExchangeRateApiDataSource({
    required this.baseUrl,
  });

  @override
  Future<ExchangeRate> getExchangeRates(String baseCode) async {
    final response = await http.get(
      Uri.parse('$baseUrl/v6/$apiKey/latest/$baseCode'),
    );

    if (response.statusCode == 200) {
      final exchangeRate =
          ExchangeRateDto.fromJson(jsonDecode(response.body)).toDomain();
      return exchangeRate;
    } else {
      throw Exception('Failed to load exchange rate');
    }
  }
}

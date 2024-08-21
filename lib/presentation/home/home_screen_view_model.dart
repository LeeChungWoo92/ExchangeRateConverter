import 'package:exchange_rate_converter/domain/model/exchnage_rate.dart';
import 'package:flutter/material.dart';
import 'package:exchange_rate_converter/domain/repository/exchange_rate_repository.dart';

class HomeScreenViewModel with ChangeNotifier {
  final ExchangeRateRepository _exchangeRateRepository;
  ExchangeRate? _exchangeRate;
  String _baseCode = 'KRW';
  double _amount = 1.0;

  HomeScreenViewModel({
    required ExchangeRateRepository exchangeRateRepository,
  }) : _exchangeRateRepository = exchangeRateRepository {
    onSearch(_baseCode);
  }

  ExchangeRate? get exchangeRate => _exchangeRate;
  String get baseCode => _baseCode;
  double get amount => _amount;

  List<String> get currencyList => 
      _exchangeRate?.conversionRates?.keys.toList() ?? [];

  Future<void> onSearch(String baseCode) async {
    _baseCode = baseCode;
    try {
      _exchangeRate = await _exchangeRateRepository.getExchangeRates(baseCode);
      notifyListeners();
    } catch (e) {
    }
  }

  void setAmount(String newAmount) {
    _amount = double.tryParse(newAmount) ?? 0.0;
    notifyListeners();
  }

  double getConvertedAmount(String targetCurrency) {
    final conversionRates = _exchangeRate?.conversionRates;
    if (conversionRates == null) return 0.0;
    
    final rate = conversionRates[targetCurrency];
    return rate != null ? _amount * rate : 0.0;
  }
}
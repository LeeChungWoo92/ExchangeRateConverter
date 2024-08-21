import 'package:exchange_rate_converter/domain/repository/exchange_rate_repository.dart';
import 'package:flutter/material.dart';

class HomeScreenViewModel with ChangeNotifier {
  HomeScreenViewModel({
    required ExchangeRateRepository exchangeRepository,
  }) : _exchangeRepository = exchangeRepository {
    fetchExchangeRates('USD');
  }

  final ExchangeRateRepository _exchangeRepository;
  
  final TextEditingController amountController = TextEditingController();
  String baseCode = 'KRW'; 
  String targetCode = 'USD'; 
  double? conversionRate;
  String? lastUpdated;
  String result = '';

  Future<void> fetchExchangeRates(String base) async {
    try {
      final rates = await _exchangeRepository.getExchangeRates(base);
      conversionRate = rates.conversionRates[targetCode];
      lastUpdated = rates.timeLastUpdateUtc;
      notifyListeners();
    } catch (e) {
      print('Error fetching exchange rates: $e');
    
    }
  }

  void onAmountChanged() {
    if (amountController.text.isNotEmpty && conversionRate != null) {
      final amount = double.tryParse(amountController.text) ?? 0;
      final convertedAmount = amount * (1 / conversionRate!);
      result = '${amount.toStringAsFixed(2)} $baseCode = ${convertedAmount.toStringAsFixed(2)} $targetCode';
    } else {
      result = '';
    }
    notifyListeners();
  }

  void swapCurrencies() {
    final temp = baseCode;
    baseCode = targetCode;
    targetCode = temp;
    fetchExchangeRates(baseCode);
    onAmountChanged(); 
    notifyListeners();
  }

  @override
  void dispose() {
    amountController.dispose();
    super.dispose();
  }
}
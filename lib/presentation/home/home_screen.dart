import 'package:exchange_rate_converter/presentation/home/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeScreenViewModel>();
    
    return Scaffold(
      appBar: AppBar(title: const Text('환율 변환기')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildCurrencyRow(context, viewModel, true),
            const SizedBox(height: 16),
            _buildCurrencyRow(context, viewModel, false),
          ],
        ),
      ),
    );
  }

  Widget _buildCurrencyRow(BuildContext context, HomeScreenViewModel viewModel, bool isBase) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: const InputDecoration(border: InputBorder.none),
              keyboardType: TextInputType.number,
              onChanged: isBase ? viewModel.setAmount : null,
              controller: isBase 
                ? TextEditingController(text: viewModel.amount.toString())
                : TextEditingController(text: viewModel.getConvertedAmount(viewModel.currencyList.first).toStringAsFixed(6)),
              readOnly: !isBase,
            ),
          ),
          DropdownButton<String>(
            value: isBase ? viewModel.baseCode : viewModel.currencyList.first,
            items: viewModel.currencyList.map((String currency) {
              return DropdownMenuItem<String>(
                value: currency,
                child: Text(currency),
              );
            }).toList(),
            onChanged: (String? newValue) {
              if (newValue != null) {
                if (isBase) {
                  viewModel.onSearch(newValue);
                } else {
                  final convertedAmount = viewModel.getConvertedAmount(newValue);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${viewModel.amount} ${viewModel.baseCode} = $convertedAmount $newValue')),
                  );
                }
              }
            },
          ),
        ],
      ),
    );
  }
}
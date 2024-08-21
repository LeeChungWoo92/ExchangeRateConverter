// import 'package:exchange_rate_converter/domain/model/model.dart';
// import 'package:exchange_rate_converter/presentation/component/input_field.dart';
// import 'package:exchange_rate_converter/presentation/home/home_screen_view_model.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: HomeScreen(),
//   ));
// }

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final firstTextEditingController = TextEditingController();
//   final secondTextEditingController = TextEditingController();
//   String? selectedCountry;
//   final List<String> countryList = ['USA', 'Canada', 'South Korea', 'Japan'];

//   @override
//   void dispose() {
//     firstTextEditingController.dispose();
//     secondTextEditingController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final viewModel = context.watch<HomeScreenViewModel>();
//     final data = HomeScreenData(
//       firstTextEditingController: firstTextEditingController,
//       secondTextEditingController: secondTextEditingController,
//       selectedCountry: selectedCountry,
//       countryList: countryList,
//     );

//     return InputField(
//       data: data,
//       onCountryChanged: (String? newCountry) {
//         setState(() {
//           selectedCountry = newCountry;
//         });
//       },
//       onFirstFieldChanged: (String value) {
//         print('First field changed: $value');
//       },
//       onSecondFieldChanged: (String value) {
//         print('Second field changed: $value');
//       },
//     );
//   }
// }

import 'package:exchange_rate_converter/domain/repository/exchange_rate_repository.dart';
import 'package:exchange_rate_converter/presentation/home/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenViewModel(
        exchangeRepository: context.read<ExchangeRateRepository>(),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text('환율 변환기')),
        body: Consumer<HomeScreenViewModel>(
          builder: (context, viewModel, child) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: viewModel.amountController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: '${viewModel.baseCode} 금액'),
                    onChanged: (_) => viewModel.onAmountChanged(),
                  ),
                  SizedBox(height: 20),
                  Text(viewModel.result, style: TextStyle(fontSize: 18)),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: viewModel.swapCurrencies,
                    child: Text('통화 바꾸기'),
                  ),
                  if (viewModel.lastUpdated != null)
                    Text('마지막 업데이트: ${viewModel.lastUpdated}'),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

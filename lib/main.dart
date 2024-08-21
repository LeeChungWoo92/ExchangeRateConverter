import 'package:exchange_rate_converter/data/data_source/exchange_rate_api_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:exchange_rate_converter/data/data_source/exchange_rate_data_source.dart';
import 'package:exchange_rate_converter/data/repository/exchange_rate_repository_impl.dart';
import 'package:exchange_rate_converter/presentation/home/home_screen.dart';
import 'package:exchange_rate_converter/presentation/home/home_screen_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => HomeScreenViewModel(
          exchangeRateRepository: ExchangeRateRepositoryImpl(
            exchangeRateDataSource: ExchangeRateApiDataSource(
              baseUrl: 'https://v6.exchangerate-api.com', 
            ),
          ),
        ),
        child: const HomeScreen(),
      ),
    );
  }
}
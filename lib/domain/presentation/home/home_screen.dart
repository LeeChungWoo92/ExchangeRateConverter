import 'package:exchange_rate_converter/domain/model/model.dart';
import 'package:exchange_rate_converter/domain/presentation/component/input_field.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final firstTextEditingController = TextEditingController();
  final secondTextEditingController = TextEditingController();
  String? selectedCountry;
  final List<String> countryList = ['USA', 'Canada', 'South Korea', 'Japan'];

  @override
  void dispose() {
    firstTextEditingController.dispose();
    secondTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final data = HomeScreenData(
      firstTextEditingController: firstTextEditingController,
      secondTextEditingController: secondTextEditingController,
      selectedCountry: selectedCountry,
      countryList: countryList,
    );

    return InputField(
      data: data,
      onCountryChanged: (String? newCountry) {
        setState(() {
          selectedCountry = newCountry;
        });
      },
      onFirstFieldChanged: (String value) {
        print('First field changed: $value');
      },
      onSecondFieldChanged: (String value) {
        print('Second field changed: $value');
      },
    );
  }
}

import 'package:exchange_rate_converter/domain/model/model.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final HomeScreenData data;
  final ValueChanged<String?> onCountryChanged;
  final ValueChanged<String> onFirstFieldChanged;
  final ValueChanged<String> onSecondFieldChanged;

  const InputField({
    super.key,
    required this.data,
    required this.onCountryChanged,
    required this.onFirstFieldChanged,
    required this.onSecondFieldChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: data.firstTextEditingController,
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                        hintText: '숫자를 입력하세요',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                      onChanged: onFirstFieldChanged,
                    ),
                  ),
                  DropdownButton<String>(
                    value: data.selectedCountry,
                    hint: Text('국가 선택'),
                    items: data.countryList.map((String country) {
                      return DropdownMenuItem<String>(
                        child: Text(country),
                        value: country,
                      );
                    }).toList(),
                    onChanged: onCountryChanged,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: data.secondTextEditingController,
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                        hintText: '숫자를 입력하세요',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                      onChanged: onSecondFieldChanged,
                    ),
                  ),
                  DropdownButton<String>(
                    value: data.selectedCountry,
                    hint: Text('국가 선택'),
                    items: data.countryList.map((String country) {
                      return DropdownMenuItem<String>(
                        child: Text(country),
                        value: country,
                      );
                    }).toList(),
                    onChanged: onCountryChanged,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

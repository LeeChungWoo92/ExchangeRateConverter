import 'package:flutter/material.dart';

class HomeScreenData {
  final TextEditingController firstTextEditingController;
  final TextEditingController secondTextEditingController;
  final String? selectedCountry;
  final List<String> countryList;

  HomeScreenData({
    required this.firstTextEditingController,
    required this.secondTextEditingController,
    required this.selectedCountry,
    required this.countryList,
  });
}
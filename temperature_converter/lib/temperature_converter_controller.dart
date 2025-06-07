import 'package:flutter/material.dart';
import 'temperature_converter.dart';

class TemperatureConverterController {
  final TextEditingController celsiusController = TextEditingController();
  final TextEditingController fahrenheitController = TextEditingController();
  String result = '';

  void convertCelsiusToFahrenheit() {
    if (celsiusController.text.isEmpty) return;
    final celsius = double.tryParse(celsiusController.text) ?? 0;
    final fahrenheit = TemperatureConverter.celsiusToFahrenheit(celsius);
    result = '${celsius.toStringAsFixed(1)}°C = ${fahrenheit.toStringAsFixed(1)}°F';
    fahrenheitController.text = fahrenheit.toStringAsFixed(1);
  }

  void convertFahrenheitToCelsius() {
    if (fahrenheitController.text.isEmpty) return;
    final fahrenheit = double.tryParse(fahrenheitController.text) ?? 0;
    final celsius = TemperatureConverter.fahrenheitToCelsius(fahrenheit);
    result = '${fahrenheit.toStringAsFixed(1)}°F = ${celsius.toStringAsFixed(1)}°C';
    celsiusController.text = celsius.toStringAsFixed(1);
  }

  void dispose() {
    celsiusController.dispose();
    fahrenheitController.dispose();
  }
}
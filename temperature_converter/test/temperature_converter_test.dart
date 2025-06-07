import 'package:flutter_test/flutter_test.dart';
import 'package:temperature_converter/temperature_converter.dart';

void main() {
  group('TemperatureConverter', () {
    test('0°C a Fahrenheit deberia ser 32°F', () {
      expect(TemperatureConverter.celsiusToFahrenheit(0), 32);
    });
    
    test('100°C a Fahrenheit deberia ser 212°F', () {
      expect(TemperatureConverter.celsiusToFahrenheit(100), 212);
    });
    
    test('32°F a Celsius deberia ser 0°C', () {
      expect(TemperatureConverter.fahrenheitToCelsius(32), 0);
    });
    
    test('212°F a Celsius deberia ser 100°C', () {
      expect(TemperatureConverter.fahrenheitToCelsius(212), 100);
    });
  });
}
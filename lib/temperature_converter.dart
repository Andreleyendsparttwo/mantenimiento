class TemperatureConverter {
  /// Convierte grados Celsius a Fahrenheit
  static double celsiusToFahrenheit(double celsius) {
    return (celsius * 9/5) + 32;
  }

  /// Convierte grados Fahrenheit a Celsius
  static double fahrenheitToCelsius(double fahrenheit) {
    return (fahrenheit - 32) * 5/9;
  }
}
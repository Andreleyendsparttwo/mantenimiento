import 'package:flutter/material.dart';
import '../temperature_converter_controller.dart';

class TemperatureConverterCard extends StatefulWidget {
  final TemperatureConverterController controller;
  
  const TemperatureConverterCard({
    super.key,
    required this.controller,
  });

  @override
  State<TemperatureConverterCard> createState() => _TemperatureConverterCardState();
}

class _TemperatureConverterCardState extends State<TemperatureConverterCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      color: Colors.white.withOpacity(0.95),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _buildInputField(
              controller: widget.controller.celsiusController,
              label: 'Grados Celsius',
              icon: Icons.thermostat_outlined,
              suffix: '°C',
              onSubmitted: (_) {
                widget.controller.convertCelsiusToFahrenheit();
                setState(() {}); // Actualiza la UI
              },
            ),
            const SizedBox(height: 12),
            _buildGradientButton(
              text: 'Convertir a Fahrenheit',
              icon: Icons.trending_up,
              onPressed: () {
                widget.controller.convertCelsiusToFahrenheit();
                setState(() {}); // Actualiza la UI
              },
              color1: Colors.orangeAccent,
              color2: Colors.deepOrange,
            ),
            const SizedBox(height: 30),
            _buildInputField(
              controller: widget.controller.fahrenheitController,
              label: 'Grados Fahrenheit',
              icon: Icons.ac_unit,
              suffix: '°F',
              onSubmitted: (_) {
                widget.controller.convertFahrenheitToCelsius();
                setState(() {}); // Actualiza la UI
              },
            ),
            const SizedBox(height: 12),
            _buildGradientButton(
              text: 'Convertir a Celsius',
              icon: Icons.trending_down,
              onPressed: () {
                widget.controller.convertFahrenheitToCelsius();
                setState(() {}); // Actualiza la UI
              },
              color1: Colors.cyanAccent,
              color2: Colors.indigo,
            ),
            const SizedBox(height: 25),
            Text(
              widget.controller.result,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    required String suffix,
    required void Function(String) onSubmitted,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        suffixText: suffix,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        filled: true,
        fillColor: Colors.white,
      ),
      keyboardType: TextInputType.number,
      onSubmitted: onSubmitted,
    );
  }

  Widget _buildGradientButton({
    required String text,
    required IconData icon,
    required VoidCallback onPressed,
    required Color color1,
    required Color color2,
  }) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [color1, color2]),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 5)],
      ),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, color: Colors.white),
        label: Text(
          text,
          style: const TextStyle(fontSize: 16, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
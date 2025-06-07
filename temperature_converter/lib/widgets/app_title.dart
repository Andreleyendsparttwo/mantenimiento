import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '🔥 Conversor de Temperatura 🔥',
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        shadows: [Shadow(blurRadius: 4, color: Colors.black26, offset: Offset(2, 2))],
      ),
    );
  }
}
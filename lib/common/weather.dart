import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  final double temperature;

  const Weather(this.temperature, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/01d@2x.png',
          scale: 0.65,
          width: 200,
        ),
        Text(
          temperature.toStringAsFixed(1),
          style: const TextStyle(fontSize: 32, fontFamily: 'Georgia'),
        )
      ],
    );
  }
}

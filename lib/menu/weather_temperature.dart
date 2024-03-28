import 'package:flutter/material.dart';

class WeatherTemperature extends StatelessWidget {
  final double temperature;

  const WeatherTemperature(this.temperature, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather APP"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0.5, 2),
            colors: <Color>[Color(0xFFF7CDBF), Colors.white],
          ),
        ),
        child: Column(
          children: [
            Image.asset(
                'assets/images/01d.png',
              scale: 0.65,
              width: 200,
            ),
            Text(
                temperature.toStringAsFixed(1),
              style: const TextStyle(
                fontSize: 32,
                fontFamily: 'Georgia'
              ),
            )
          ],
        ),
      ),
    );
  }
}

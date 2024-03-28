import 'package:flutter/material.dart';
import 'package:flutterproject/menu/weather_menu.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MyMeteo',
      home: WeatherMenu(),
    );
  }
}

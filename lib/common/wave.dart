import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';



class Wave extends StatelessWidget {
  const Wave({super.key});

  static const _colors = [
    Color(0xFFFEE440),
    Color(0xFF00BBF9),
  ];

  static const _durations = [
    5000,
    4000,
  ];

  static const _heightPercentages = [
    0.65,
    0.66,
  ];

  static const _backgroundColor = Color(0xFFF15BB5);

  @override
  Widget build(BuildContext context) {

    return RotatedBox(quarterTurns: 2,
      child: WaveWidget(
        config: CustomConfig(
          colors: _colors,
          durations: _durations,
          heightPercentages: _heightPercentages,
        ),
        backgroundColor: _backgroundColor,
        size: const Size(double.infinity, double.infinity),
        waveAmplitude: 0,
      )
    );
  }
}

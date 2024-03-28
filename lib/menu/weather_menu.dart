import 'package:flutter/material.dart';
import 'package:flutterproject/common/weather.dart';

import 'package:flutterproject/common/wave.dart';

class WeatherMenu extends StatelessWidget {
  const WeatherMenu({super.key});

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          const Weather(30),
          SizedBox(
              height: MediaQuery.of(context).size.height*0.4,
              width: MediaQuery.of(context).size.width,
              child: const Wave()),
              Row(
                children: [
                  ElevatedButton(onPressed:()=>{} , child: const Text("Météo")),
                  ElevatedButton(onPressed: ()=>{}, child: const Text("Villes")),
                ],
              )
            ]
        ),
      ),
    );
  }

  
}

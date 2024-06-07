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
        //constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0.5, 0.8),
            colors: <Color>[Color(0xFFF7CDBF), Colors.white],
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Weather(30),
              Container(
                decoration: BoxDecoration(
                    color: Colors.red[900],
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                width: 500,
                height: 200,
                // child: SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.4,
                //   width: MediaQuery.of(context).size.width,
                //   //child: const Wave()
                // ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () => {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      child: const Text("Météo")),
                  ElevatedButton(
                      onPressed: () => {}, child: const Text("Villes")),
                ],
              )
            ]),
      ),
    );
  }
}

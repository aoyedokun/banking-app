import 'dart:async';

import 'package:flutter/material.dart';


class FlashScreen extends StatefulWidget {
  const FlashScreen({Key? key}) : super(key: key);

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override

  @override
  void initState() {
    //TODO:implement initstate
    startTimer();
    super.initState();
  }
  startTimer() async{
    var duration = Duration(seconds: 4);
    return Timer (duration, route);
  }
  route() {
    Navigator.of(context).pushReplacementNamed('/onboarding_screen');
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;


    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFF24E00),
          Color(0xFFF24E00),
          ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset("assets/Logo.png",
                    height: screenSize.height * 0.25,
                    width: screenSize.width * 0.6,
          ),
                  SizedBox(height: screenSize.height * 0.05),
              Text(
                "A step closer to\n"
                         "freedom",
                textAlign: TextAlign.start,
                style: TextStyle(
    color: Colors.black,
    fontSize:screenSize.width * 0.06,


    ),
    ),

    ],
    )

        ]  ),
    )
    );
  }
}

import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 2.5,
            colors: [
              Color(0xff121212),
              Color(0xff121212),
              Color(0xff121212),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(),
            ),
            Column(
              children: [
                Text(
                  "Look for a",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Stack(
                  children: [
                    Positioned(
                      child: Image.asset(
                        "assets/image/gradient.93e7eba9.png",
                        height: 110,
                      ),
                    ),
                    Positioned(
                      left: 40,
                      bottom: 45,
                      child: Text(
                        "Space",
                        style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Made with ♥ by ",
                    ),
                    TextSpan(
                      text: "Adarsh Kumar Singh",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xffA9A9A9),
                      ),
                      recognizer: new TapGestureRecognizer()
                        ..onTap = () => print('Tap Here onTap'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:look_for_space/components/AppIconSection.dart';

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
        color: Color(0xff121212),
        // decoration: BoxDecoration(
        //   gradient: RadialGradient(
        //     radius: 2.5,
        //     colors: [
        //       Color(0xff121212),
        //       Color(0xff121212),
        //       Color(0xff121212),
        //     ],
        //   ),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(),
            ),
            Hero(
              tag: "iconSection",
              child: AppIconSection(),
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

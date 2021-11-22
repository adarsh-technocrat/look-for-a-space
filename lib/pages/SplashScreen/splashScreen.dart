import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:look_for_space/components/AppIconSection.dart';
import 'package:look_for_space/constants/constants.dart';
import 'package:look_for_space/pages/HomePage/homeScreen.dart';
import 'package:route_transitions/route_transitions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) =>
        fadeWidget(opaque: true, newPage: HomeScreen(), context: context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

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
            AppIconSection(),
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
                        color: Constants.kTextLinkColor,
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

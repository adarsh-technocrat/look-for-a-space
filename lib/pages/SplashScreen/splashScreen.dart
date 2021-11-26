import 'package:flutter/material.dart';
import 'package:look_for_space/components/AppIconSection.dart';
import 'package:look_for_space/components/footerSection.dart';
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
            FooterSection(
              specialThanks: false,
            ),
          ],
        ),
      ),
    );
  }
}

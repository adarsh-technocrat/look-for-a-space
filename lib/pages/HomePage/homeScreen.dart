import 'package:buy_me_a_coffee_widget/buy_me_a_coffee_widget.dart';
import 'package:flutter/material.dart';
import 'package:look_for_space/components/AppIconSection.dart';
import 'package:look_for_space/components/SearchChip.dart';
import 'package:look_for_space/components/SpaceCardSection.dart';
import 'package:look_for_space/components/ToogleSearchBar.dart';
import 'package:look_for_space/components/footerSection.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    child: AppIconSection(),
                  ),
                  SizedBox(height: 20),
                  ToogleSearchBar(),
                  SearchChip(),
                  SizedBox(height: 20),
                  SpaceCardSection(),
                  // Padding(
                  //   padding: const EdgeInsets.all(20.0),
                  //   child: Container(
                  //     child: BuyMeACoffeeWidget(
                  //       sponsorID: "AdarshKumar",
                  //       theme: BlueTheme(),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 10),
                  FooterSection(
                    specialThanks: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

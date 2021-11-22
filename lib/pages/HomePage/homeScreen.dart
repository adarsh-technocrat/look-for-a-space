import 'package:flutter/material.dart';
import 'package:look_for_space/components/AppIconSection.dart';
import 'package:look_for_space/components/SearchChip.dart';
import 'package:look_for_space/components/SpaceCardSection.dart';

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
                  SearchChip(),
                  SizedBox(height: 20),
                  SpaceCardSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

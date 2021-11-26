import 'package:flutter/material.dart';
import 'package:look_for_space/components/AppIconSection.dart';
import 'package:look_for_space/components/SearchChip.dart';
import 'package:look_for_space/components/SpaceCardSection.dart';
import 'package:look_for_space/components/ToogleSearchBar.dart';
import 'package:look_for_space/components/footerSection.dart';
import 'package:look_for_space/components/toogleSwitch.dart';
import 'package:look_for_space/constants/constants.dart';
import 'package:look_for_space/provider/searchSpaceProvider.dart';
import 'package:look_for_space/utils/urlLauncher.dart';
import 'package:provider/provider.dart';
import 'package:rive/rive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Utiles utiles = Utiles();

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchSpaceProvider>(
        builder: (context, spaceProvider, child) {
      var data = spaceProvider.searchSpaceByTitleModel?.data;
      var includes = spaceProvider.searchSpaceByTitleModel?.includes;
      var errors = spaceProvider.searchSpaceByTitleModel?.errors;
      var metaData = spaceProvider.searchSpaceByTitleModel?.meta;
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
                    SearchBar(),
                    SearchChip(spaceProvider: spaceProvider),
                    ToogleSwitch(),
                    SizedBox(height: 20),
                    spaceProvider.isLoading
                        ? Container(
                            width: 100,
                            height: 100,
                            child: RiveAnimation.asset(
                              "assets/image/loader.riv",
                            ))
                        : data == null
                            ? Container()
                            : SpaceCardSection(
                                data: data,
                                includess: includes,
                                errorss: errors,
                              ),
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
        floatingActionButton: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(50)),
          child: FloatingActionButton(
            onPressed: () {
              utiles.urlLauncher("https://www.buymeacoffee.com/AdarshKumar ");
            },
            backgroundColor: Constants.kScaffoldBackgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset("assets/image/bmc_svg_logo 1.png"),
            ),
          ),
        ),
      );
    });
  }
}

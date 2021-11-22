import 'package:flutter/material.dart';
import 'package:look_for_space/pages/SplashScreen/splashScreen.dart';
import 'package:look_for_space/provider/searchSpaceProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SearchSpaceProvider>(
          create: (_) => SearchSpaceProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Look for Space',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Lato",
        ),
        home: SplashScreen(),
      ),
    );
  }
}

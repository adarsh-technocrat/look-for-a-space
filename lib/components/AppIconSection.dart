import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppIconSection extends StatelessWidget {
  const AppIconSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.white,
          ),
        ),
        Stack(
          children: [
            Positioned(
              left: 30,
              child: Text(
                "look for a",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
            Positioned(
              child: Image.asset(
                "assets/image/gradient.93e7eba9.png",
                height: 110,
              ),
            ),
            Positioned(
              left: 40,
              bottom: 36,
              child: Text(
                "space",
                style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

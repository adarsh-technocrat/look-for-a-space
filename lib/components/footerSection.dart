import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:look_for_space/constants/constants.dart';
import 'package:look_for_space/utils/urlLauncher.dart';

class FooterSection extends StatelessWidget {
  final bool? specialThanks;

  const FooterSection({Key? key, this.specialThanks}) : super(key: key);

  static Utiles utiles = Utiles();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          specialThanks!
              ? RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Special thanks to  ",
                      ),
                      TextSpan(
                        text: "pragun ",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Constants.kTextLinkColor,
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () =>
                              utiles.urlLauncher("https://twitter.com/pragdua"),
                      ),
                      TextSpan(
                        text: "  and  ",
                      ),
                      TextSpan(
                        text: "   apoorv \n",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Constants.kTextLinkColor,
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () => utiles
                              .urlLauncher("https://twitter.com/apoorv_taneja"),
                      ),
                      TextSpan(
                        text: "  for  ",
                      ),
                      TextSpan(
                          text: " look for space ",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blueAccent,
                          ),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () => utiles
                                .urlLauncher("https://www.lookfora.space/")),
                      TextSpan(
                        text: " insperation. ",
                      ),
                    ],
                  ),
                )
              : Container(),
          SizedBox(height: 20),
          RichText(
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
                    ..onTap = () => utiles
                        .urlLauncher("https://twitter.com/adarshKumar865"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

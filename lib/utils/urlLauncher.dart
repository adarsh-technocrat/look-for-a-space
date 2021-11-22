import 'package:url_launcher/url_launcher.dart';

class Utiles {
  Future<void> urlLauncher(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw "Something went wrong!";
    }
  }
}

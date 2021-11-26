import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class Utiles {
  final DateTime now = DateTime.now();

  Future<void> urlLauncher(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw "Something went wrong!";
    }
  }

  String? dateTimeFormeter(String formate, String? stringDateAndTime) {
    if (stringDateAndTime == null) {
      return "";
    } else {
      final DateFormat formatter = DateFormat(formate);
      final String formatted =
          formatter.format(DateTime.parse(stringDateAndTime));
      return formatted;
    }
  }
}

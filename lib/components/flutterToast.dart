import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:look_for_space/constants/constants.dart';

void flutterToast(String msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Constants.kspaceColor2,
      textColor: Colors.white,
      fontSize: 16.0);
}

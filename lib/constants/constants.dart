import 'package:flutter/material.dart';

class Constants {
  static const Color kScaffoldBackgroundColor = Color(0xff121212);
  static const Color kTextLinkColor = Color(0xffA9A9A9);
  static const Color kspaceColor1 = Color(0xff8A61F2);
  static const Color kspaceColor2 = Color(0xff4B4BF3);

  // ****************************************

  static const String kBuyMeACoffeeUrl = "https://www.buymeacoffee.com/";
  static const String kBaseUrl = "https://api.twitter.com/2";
  static const String kTwitterUrl = "https://twitter.com/";

  static const headers = {
    'Authorization':
        'Bearer AAAAAAAAAAAAAAAAAAAAALJLWAEAAAAAropMBY0heaa5SIVbMi3d4x29c8w%3D2tOuKsJNCwSSvCHwpfmWSRUq6fR7AxwOLxH4x8AIKgHWr093YL',
  };

  // ************************************************* API parameter
  static const spaceFields =
      "title,created_at,participant_count,scheduled_start";
  static const expansions = "creator_id";
  static const userFields = "profile_image_url,url";
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:look_for_space/Models/SearchSpaceByTitleModel.dart';
import 'package:http/http.dart' as http;
import 'package:look_for_space/components/flutterToast.dart';
import 'package:look_for_space/constants/constants.dart';

class SearchSpaceByTitleService {
  var baseUrl = Constants.kBaseUrl;
  var headers = Constants.headers;
  var spaceFields = Constants.spaceFields;
  var expansions = Constants.expansions;
  var userFields = Constants.userFields;

  Future<SearchSpaceByTitleModel?> getSearchSpace(BuildContext context,
      [String? state, String? query, String? topic]) async {
    var searchSpaceByTitle;
    try {
      var response = await http
          .get(Uri.parse(urlValidator(state, query, topic)), headers: headers);
      final jsonresponse = json.decode(response.body);
      searchSpaceByTitle = SearchSpaceByTitleModel.fromJson(jsonresponse);
      if (jsonresponse['meta']['result_count'] == 0) {
        flutterToast("👀 No Results Right Now");
      }
      if (response.statusCode == 400) {
        print("Bad Request");
      } else if (response.statusCode == 401) {
        print("Something went wrong");
      } else if (response.statusCode == 500) {
        print("Internal Server Error");
      }
    } catch (e) {
      print("Oops!.. something went wrong ");
      print(e);
    }
    return searchSpaceByTitle;
  }

  String urlValidator(String? state, String? query, String? topic) {
    if (topic == null) {
      return "$baseUrl/spaces/search?query=$query&state=$state&space.fields=$spaceFields&expansions=$expansions&user.fields=$userFields&topic.fields=";
    } else {
      return "$baseUrl/spaces/search?query=$query&state=$state&space.fields=$spaceFields&expansions=$expansions&user.fields=$userFields&topic.fields=$topic";
    }
  }
}

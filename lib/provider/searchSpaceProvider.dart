import 'package:flutter/cupertino.dart';
import 'package:look_for_space/Models/SearchSpaceByTitleModel.dart';
import 'package:look_for_space/services/SearchSpaceByTitleService.dart';

class SearchSpaceProvider with ChangeNotifier {
  SearchSpaceByTitleModel? searchSpaceByTitleModel = SearchSpaceByTitleModel();
  SearchSpaceByTitleService searchSpaceByTitleService =
      SearchSpaceByTitleService();
  bool isLoading = false;

  Future getSpaceResults(BuildContext context, String state, String searchQuery,
      [String? topic]) async {
    print("initiated");
    isLoading = true;
    notifyListeners();
    searchSpaceByTitleModel = await searchSpaceByTitleService.getSearchSpace(
        context, state, searchQuery, topic);
    isLoading = false;
    notifyListeners();
  }
}

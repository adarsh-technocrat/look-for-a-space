import 'package:flutter/cupertino.dart';
import 'package:look_for_space/Models/SearchSpaceByTitleModel.dart';
import 'package:look_for_space/services/SearchSpaceByTitleService.dart';

class SearchSpaceProvider with ChangeNotifier {
  SearchSpaceByTitleModel? searchSpaceByTitleModel = SearchSpaceByTitleModel();
  SearchSpaceByTitleService searchSpaceByTitleService =
      SearchSpaceByTitleService();
  bool isLoading = false;

  int initialLabelIndex = 1;

  int selectedChipIndex = 8;

  List<String>? labels = ['live', 'scheduled'];

  List<String> topic = [
    "web3",
    "finance",
    "NFT",
    "chill",
    "music",
    "startup",
    "health",
  ];

  Future getSpaceResults(BuildContext context,
      [String? searchQuery, String? topic]) async {
    print(searchQuery);
    isLoading = true;
    notifyListeners();
    searchSpaceByTitleModel = await searchSpaceByTitleService.getSearchSpace(
        context, labels![initialLabelIndex], searchQuery, topic);
    isLoading = false;
    notifyListeners();
  }

  void onToggle(int index, SearchSpaceProvider spaceProvider,
      BuildContext context) async {
    initialLabelIndex = index;
    notifyListeners();
    if (spaceProvider.searchSpaceByTitleModel?.data != null)
      await getSpaceResults(context, topic[selectedChipIndex]);
  }
}

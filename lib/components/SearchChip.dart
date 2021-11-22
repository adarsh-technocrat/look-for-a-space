import 'package:flutter/material.dart';
import 'package:look_for_space/constants/constants.dart';
import 'package:look_for_space/provider/searchSpaceProvider.dart';

class SearchChip extends StatefulWidget {
  final SearchSpaceProvider? spaceProvider;

  const SearchChip({Key? key, this.spaceProvider}) : super(key: key);

  @override
  _SearchChipState createState() => _SearchChipState();
}

class _SearchChipState extends State<SearchChip> {
  static int selectedIndex = 8;

  static List<String> topic = [
    "web3",
    "finance",
    "NFT",
    "chill",
    "music",
    "startup",
    "health",
  ];

  @override
  Widget build(BuildContext context) {
    return _buildChips();
  }

  Widget _buildChips() {
    List<Widget> chips = [];

    for (int i = 0; i < topic.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
        selected: selectedIndex == i,
        onSelected: (bool selected) {
          setState(() {
            if (selected) {
              selectedIndex = i;
              widget.spaceProvider!
                  .getSpaceResults(context, "scheduled", topic[i]);
            }
          });
        },
        backgroundColor: Constants.kScaffoldBackgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: selectedIndex == i ? Constants.kspaceColor1 : Colors.white,
              width: 1),
          borderRadius: BorderRadius.circular(30),
        ),
        selectedColor: Constants.kScaffoldBackgroundColor,
        label: Text(
          topic[i],
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
        ),
      );

      chips.add(Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: choiceChip));
    }
    return Wrap(
      alignment: WrapAlignment.center,
      children: chips,
    );
  }
}

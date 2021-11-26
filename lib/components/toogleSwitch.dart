import 'package:flutter/material.dart';
import 'package:look_for_space/constants/constants.dart';
import 'package:look_for_space/provider/searchSpaceProvider.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToogleSwitch extends StatefulWidget {
  const ToogleSwitch({Key? key}) : super(key: key);

  @override
  _ToogleSwitchState createState() => _ToogleSwitchState();
}

class _ToogleSwitchState extends State<ToogleSwitch> {
  @override
  Widget build(BuildContext context) {
    return Consumer<SearchSpaceProvider>(
      builder: (context, spaceProvider, _) => Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 10),
        child: ToggleSwitch(
            minWidth: 90.0,
            cornerRadius: 20.0,
            activeBgColors: [
              [Constants.kspaceColor2],
              [Constants.kspaceColor2],
            ],
            activeFgColor: Colors.white,
            inactiveBgColor: Colors.transparent,
            inactiveFgColor: Colors.white,
            initialLabelIndex: spaceProvider.initialLabelIndex,
            totalSwitches: 2,
            labels: ['Live', 'Scheduled'],
            radiusStyle: true,
            onToggle: (index) =>
                spaceProvider.onToggle(index, spaceProvider, context)),
      ),
    );
  }
}

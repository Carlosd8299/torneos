import 'package:flutter/material.dart';

import 'package:tornaument/widgets/palette.dart';
import 'package:tornaument/widgets/tab_bar.dart';

class CustomAppBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function onTap;

  const CustomAppBar({
    Key key,
    @required this.icons,
    @required this.selectedIndex,
    @required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 350,
            child: CustomTabBar(
              icons: icons,
              selectedIndex: selectedIndex,
              onTap: onTap,
              isBottomIndicator: true,
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [],
          ))
        ],
      ),
    );
  }
}

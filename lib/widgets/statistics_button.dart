import 'package:flutter/material.dart';

import '../resources/fight_club_colors.dart';

class StatisticsButton extends StatelessWidget {
  const StatisticsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(border: Border.all(color: FightClubColors.darkGreyText, width: 2)),
        child: Text(
          "Statistics".toUpperCase(),
          style: const TextStyle(
              fontSize: 13,
              color: FightClubColors.darkGreyText),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../resources/fight_club_colors.dart';

class SecondaryActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const SecondaryActionButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: FightClubColors.darkGreyText, width: 2)),
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
              fontSize: 13, color: FightClubColors.darkGreyText),
        ),
      ),
    );
  }
}

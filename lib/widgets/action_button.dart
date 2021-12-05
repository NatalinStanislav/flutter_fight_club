import 'package:flutter/material.dart';

import '../resources/fight_club_colors.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;

  const ActionButton({
    Key? key,
    required this.onTap,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        height: 40,
        color: color,
        alignment: Alignment.center,
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 16,
              color: FightClubColors.whiteText),
        ),
      ),
    );
  }
}

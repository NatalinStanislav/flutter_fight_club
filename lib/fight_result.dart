import 'dart:ui';

import 'package:flutter_fight_club/resources/fight_club_colors.dart';

class FightResult {
  final String result;

  const FightResult._(this.result);

  static const won = FightResult._("Won");
  static const lost = FightResult._("Lost");
  static const draw = FightResult._("Draw");

  static FightResult? getFightResultByString(String result) {
    switch (result) {
      case ("Won"):
        return won;
      case ("Lost"):
        return lost;
      case ("Draw"):
        return draw;
    }
    return null;
  }

  static Color? getFightResultButtonColor(FightResult fightResult) {
    switch (fightResult.result) {
      case ("Won"):
        return FightClubColors.greenButton;
      case ("Lost"):
        return FightClubColors.redButton;
      case ("Draw"):
        return FightClubColors.blueButton;
    }
    return null;
  }

  static FightResult? calculateResult(
      final int yourLives, final int enemiesLives) {
    if (yourLives == 0 && enemiesLives == 0) {
      return draw;
    } else if (enemiesLives == 0) {
      return won;
    } else if (yourLives == 0) {
      return lost;
    } else {
      return null;
    }
  }

  @override
  String toString() {
    return 'FightResult{result: $result}';
  }
}

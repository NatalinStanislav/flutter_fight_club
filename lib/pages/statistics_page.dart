import 'package:flutter/material.dart';
import 'package:flutter_fight_club/resources/fight_club_colors.dart';
import 'package:flutter_fight_club/widgets/secondary_action_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FightClubColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 24),
              child: Text(
                "Statistics",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24, color: FightClubColors.darkGreyText),
              ),
            ),
            Expanded(child: SizedBox()),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FutureBuilder<int?>(
                    future: SharedPreferences.getInstance().then(
                        (sharedPreferences) =>
                            sharedPreferences.getInt("stats_won")),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData || snapshot.data == null) {
                        return Text(
                          "Won: 0",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: FightClubColors.darkGreyText),
                        );
                      }
                      return Text(
                        "Won: ${snapshot.data}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, color: FightClubColors.darkGreyText),
                      );
                    }),
                SizedBox(height: 30),
                FutureBuilder<int?>(
                    future: SharedPreferences.getInstance().then(
                        (sharedPreferences) =>
                            sharedPreferences.getInt("stats_draw")),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData || snapshot.data == null) {
                        return Text(
                          "Draw: 0",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: FightClubColors.darkGreyText),
                        );
                      }
                      return Text(
                        "Draw: ${snapshot.data}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, color: FightClubColors.darkGreyText),
                      );
                    }),
                SizedBox(height: 30),
                FutureBuilder<int?>(
                    future: SharedPreferences.getInstance().then(
                        (sharedPreferences) =>
                            sharedPreferences.getInt("stats_lost")),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData || snapshot.data == null) {
                        return Text(
                          "Lost: 0",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: FightClubColors.darkGreyText),
                        );
                      }
                      return Text(
                        "Lost: ${snapshot.data}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, color: FightClubColors.darkGreyText),
                      );
                    }),
              ],
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: SecondaryActionButton(
                onTap: () => Navigator.of(context).pop(),
                text: "Back",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

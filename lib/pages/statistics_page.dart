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
            FutureBuilder<SharedPreferences>(
                future: SharedPreferences.getInstance(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData || snapshot.data == null) {
                    return SizedBox();
                  }
                  SharedPreferences sp = snapshot.data!;
                  return Column(
                    children: [
                      Text(
                        "Won: ${sp.getInt("stats_won") ?? 0}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, color: FightClubColors.darkGreyText),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Draw: ${sp.getInt("stats_draw") ?? 0}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, color: FightClubColors.darkGreyText),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Lost: ${sp.getInt("stats_lost") ?? 0}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, color: FightClubColors.darkGreyText),
                      ),
                    ],
                  );
                }),
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

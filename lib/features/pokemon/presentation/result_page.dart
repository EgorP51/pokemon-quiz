import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_quiz/core/ui/style.dart';
import 'package:pokemon_quiz/features/pokemon/presentation/start_game_page.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        title: Text(
          "\$Pokemon Name\$",
          style: TextStyle(
            fontFamily: 'Bangers',
            fontSize: 18,
            color: kWhite,
            letterSpacing: 1.5,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: kRed,
        iconTheme: IconThemeData(color: kWhite),
      ),
      body: Container(
        color: kWhite,
        alignment: Alignment.center,
        child: SizedBox.square(
          dimension: MediaQuery.of(context).size.width * 0.9,
          child: Placeholder(),
        ),
      ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(40.w),
          child: CupertinoButton(
            color: kBlue,
            child: Text(
              'Go to Home',
              style: TextStyle(
                fontFamily: 'Fredoka',
                fontSize: 20.sp,
                color: kWhite,
                fontWeight: FontWeight.w800,
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const StartGamePage(),
                ),
              );
            },
          ),
        )
    );
  }
}

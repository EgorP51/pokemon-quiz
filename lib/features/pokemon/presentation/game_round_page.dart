import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_quiz/core/ui/style.dart';
import 'package:pokemon_quiz/features/pokemon/presentation/result_page.dart';

class GameRoundPage extends StatefulWidget {
  const GameRoundPage({super.key});

  @override
  State<GameRoundPage> createState() => _GameRoundPageState();
}

class _GameRoundPageState extends State<GameRoundPage> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: kWhite,
        appBar: AppBar(
          backgroundColor: kRed,
          iconTheme: IconThemeData(color: kWhite),
          automaticallyImplyLeading: false,
          title: Text(
            "Guess the Pokémon!",
            style: TextStyle(
              fontFamily: 'Bangers',
              fontSize: 18.sp,
              color: kWhite,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Container(
          color: kWhite,
          alignment: Alignment.center,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: SizedBox.square(
              dimension: MediaQuery.of(context).size.width * 0.9,
              child: Placeholder(),
            ),
          ),
        ),
        bottomNavigationBar: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:
                ['d', 'd', 'g', 'r'].map((e) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
                    child: Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: CupertinoButton(
                          color: kBlue,
                          child: Text(
                            e,
                            style: TextStyle(
                              fontFamily: 'Fredoka',
                              fontSize: 20.sp,
                              color: kWhite,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ResultPage(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  );
                }).toList(),
          ),
        ),
      ),
    );
  }
}

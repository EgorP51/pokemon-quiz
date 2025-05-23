import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokemon_quiz/core/ui/style.dart';

import '../manager/pokemon_bloc.dart';
import 'game_round_page.dart';

class StartGamePage extends StatelessWidget {
  const StartGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              color: kRed,
              child: Center(
                child: SvgPicture.asset(
                  'assets/svg/logo.svg',
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              color: kWhite,
              child: SafeArea(
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  body: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Who's that Pokémon?",
                          style: TextStyle(
                            fontFamily: 'Bangers',
                            fontSize: 24.sp,
                            color: kBlack,
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "Test your Poké-knowledge!\nA silhouette appears — can you catch the right one?",
                          style: TextStyle(
                            fontFamily: 'Fredoka',
                            fontSize: 18.sp,
                            color: kBlack.withAlpha(150),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  bottomNavigationBar: Padding(
                    padding: EdgeInsets.all(40.w),
                    child: CupertinoButton(
                      color: kBlue,
                      child: Text(
                        'Start Round',
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
                            builder: (context) => const GameRoundPage(),
                          ),
                        );
                        context.read<PokemonBloc>().add(PokemonEvent.getPokemon());
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.4 - 50.h,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(color: kBlack, width: double.infinity, height: 16.h),
              Container(
                height: 100.h,
                width: 100.h,
                decoration: BoxDecoration(
                  color: kBlack,
                  borderRadius: BorderRadius.circular(50.h),
                ),
              ),
              Container(
                height: 72.h,
                width: 72.h,
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(36.h),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

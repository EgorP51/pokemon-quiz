import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_quiz/core/ui/style.dart';
import 'package:pokemon_quiz/features/pokemon/manager/pokemon_bloc.dart';
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
        body: BlocConsumer<PokemonBloc, PokemonState>(
          listener: (context, state) {
            if (state.error != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error!.text),
                  backgroundColor: kDarkRed,
                ),
              );
            }
          },
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: SizedBox.square(
                  dimension: MediaQuery.of(context).size.width * 0.9,
                  child: Container(
                    decoration: BoxDecoration(
                      color: kGrey,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                ),
              );
            }
            return Container(
              color: kWhite,
              alignment: Alignment.center,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: SizedBox.square(
                  dimension: MediaQuery.of(context).size.width * 0.9,
                  child: Image.network(
                    state.mainPokemon?.imageUrl ?? '',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Text(
                          "Error loading Pokémon",
                          style: TextStyle(
                            fontFamily: 'Fredoka',
                            fontSize: 20,
                            color: kBlack,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: SafeArea(
          child: BlocBuilder<PokemonBloc, PokemonState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children:
                      List.generate(4, (index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
                          child: SizedBox(
                            width: double.infinity,
                            child: CupertinoButton(
                              color: kGrey,
                              disabledColor: kGrey,
                              onPressed: null,
                              child: SizedBox(height: 20.h),
                            ),
                          ),
                        );
                      }).toList(),
                );
              }

              final List<String> pokemonsNames = state.pokemonsNames;

              return Column(
                mainAxisSize: MainAxisSize.min,
                children:
                    pokemonsNames.map((name) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
                        child: SizedBox(
                          width: double.infinity,
                          child: CupertinoButton(
                            color: kBlue,
                            child: Text(
                              name,
                              style: TextStyle(
                                fontFamily: 'Fredoka',
                                fontSize: 20.sp,
                                color: kWhite,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            onPressed: () {
                              context.read<PokemonBloc>().add(
                                PokemonEvent.checkAnswer(name),
                              );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ResultPage(),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    }).toList(),
              );
            },
          ),
        ),
      ),
    );
  }
}

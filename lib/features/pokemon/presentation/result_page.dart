import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_quiz/features/pokemon/presentation/start_game_page.dart';

import '../../../core/models/answer_status.dart';
import '../../../core/ui/style.dart';
import '../manager/pokemon_bloc.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PokemonBloc, PokemonState>(
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
        return Stack(
          children: [
            _buildMainContent(state),
            if (state.answerStatus is Correct) _buildCorrectAnswerOverlay(),
            if (state.answerStatus is Incorrect) _buildIncorrectAnswerOverlay(),
          ],
        );
      },
    );
  }

  Widget _buildMainContent(PokemonState state) {
    final pokemon = state.mainPokemon;
    if (pokemon == null) {
      return const Scaffold(
        body: Center(child: Text("No Pokémon data available.")),
      );
    }

    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: kWhite,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            pokemon.name.toUpperCase(),
            style: TextStyle(
              fontFamily: 'Bangers',
              fontSize: 18.sp,
              color: kWhite,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: kRed,
          iconTheme: IconThemeData(color: kWhite),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Image.network(
                  pokemon.imageUrl,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Center(
                      child: Text(
                        "Error loading Pokémon",
                        style: TextStyle(
                          fontFamily: 'Fredoka',
                          fontSize: 20.sp,
                          color: kBlack,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.h),

              if (pokemon.types != null && pokemon.types!.isNotEmpty)
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 8.w,
                  runSpacing: 8.h,
                  children:
                      pokemon.types!
                          .map(
                            (type) => Chip(
                              label: Text(
                                type.toUpperCase(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kWhite,
                                ),
                              ),
                              backgroundColor: kBlue,
                            ),
                          )
                          .toList(),
                ),
              SizedBox(height: 20.h),

              _buildPokemonInfoRow("Height", pokemon.height?.toString()),
              _buildPokemonInfoRow("Weight", pokemon.weight?.toString()),
              _buildPokemonInfoRow("Base XP", pokemon.baseExperience?.toString()),
              SizedBox(height: 16.h),

              if (pokemon.stats != null) ...[
                _buildPokemonInfoRow("HP", pokemon.stats!.hp?.toString()),
                _buildPokemonInfoRow("Attack", pokemon.stats!.attack?.toString()),
                _buildPokemonInfoRow(
                  "Defense",
                  pokemon.stats!.defense?.toString(),
                ),
                _buildPokemonInfoRow(
                  "Sp. Atk",
                  pokemon.stats!.specialAttack?.toString(),
                ),
                _buildPokemonInfoRow(
                  "Sp. Def",
                  pokemon.stats!.specialDefense?.toString(),
                ),
                _buildPokemonInfoRow("Speed", pokemon.stats!.speed?.toString()),
              ],
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
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
                MaterialPageRoute(builder: (context) => const StartGamePage()),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildPokemonInfoRow(String title, String? value) {
    return value == null
        ? SizedBox.shrink()
        : Padding(
          padding: EdgeInsets.symmetric(vertical: 6.h),
          child: Row(
            children: [
              Text(
                "$title: ",
                style: TextStyle(
                  fontFamily: 'Fredoka',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: kBlack,
                ),
              ),
              Expanded(
                child: Text(
                  value,
                  style: TextStyle(
                    fontFamily: 'Fredoka',
                    fontSize: 18.sp,
                    color: kDarkGrey,
                  ),
                ),
              ),
            ],
          ),
        );
  }

  Widget _buildCorrectAnswerOverlay() {
    return _buildAnswerOverlay(
      title: "You caught it! 🎉",
      buttonText: "Cool!",
      onPressed: () {
        context.read<PokemonBloc>().add(const PokemonEvent.resetAnswerState());
      },
    );
  }

  Widget _buildIncorrectAnswerOverlay() {
    return _buildAnswerOverlay(
      title: "Oops! That's not it! 😢",
      buttonText: "Try again!",
      onPressed: () {
        context.read<PokemonBloc>().add(const PokemonEvent.resetAnswerState());
      },
    );
  }

  Widget _buildAnswerOverlay({
    required String title,
    required String buttonText,
    required VoidCallback onPressed,
  }) {
    return Material(
      color: kBlack.withAlpha(100),
      child: Center(
        child: UnconstrainedBox(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Fredoka',
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20.h),
                CupertinoButton(
                  color: kBlue,
                  onPressed: onPressed,
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      fontFamily: 'Fredoka',
                      fontSize: 20.sp,
                      color: kWhite,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

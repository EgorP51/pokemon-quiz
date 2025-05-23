import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_quiz/features/pokemon/data/datasources/pokemon_remote_datasource.dart';
import 'package:pokemon_quiz/features/pokemon/data/models/pokemon_response.dart';

import '../../../core/network/api_response.dart';
import '../../../core/utils/answer_status.dart';
import '../../../core/utils/error.dart';
import '../data/models/pokemon.dart';

part 'pokemon_bloc.freezed.dart';
part 'pokemon_event.dart';
part 'pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final PokemonRemoteDatasource pokemonRemoteDatasource;

  PokemonBloc(this.pokemonRemoteDatasource) : super(const PokemonState()) {
    on<PokemonEvent>((event, emit) {
      print(event);
    });

    on<_GetPokemon>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        final PokemonResponse pokemonResponse =
            await pokemonRemoteDatasource.getRandomPokemons();

        if (pokemonResponse.status == ResponseStatus.success) {
          final pokemons = pokemonResponse.pokemons;
          if (pokemons != null && pokemons.isNotEmpty) {
            pokemons.shuffle();

            emit(
              state.copyWith(
                mainPokemon: pokemons.first,
                pokemonsNames: pokemons.map((e) => e.name).toList(),
              ),
            );
          } else {
            emit(state.copyWith(error: MError(text: "No Pokémon found")));
          }
        } else {
          emit(state.copyWith(error: MError(text: pokemonResponse.message)));
        }

        emit(state.copyWith(isLoading: false));
      } catch (e) {
        emit(
          state.copyWith(isLoading: false, error: MError(text: e.toString())),
        );
      }
    });

    on<_CheckAnswer>((event, emit) {
      final isCorrect = event.name == state.mainPokemon?.name;

      emit(state.copyWith(answerStatus: isCorrect ? Correct() : Incorrect()));

      if (isCorrect) {
        add(const _ShowResultDialog(true));
      }
    });

    on<_ResetAnswerState>((event, emit) {
      emit(state.copyWith(answerStatus: null));
    });

    on<_ShowResultDialog>((event, emit) {
      emit(state.copyWith(showResultDialog: true));
    });
  }
}

import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_quiz/features/pokemon/data/pokemon_repository.dart';

import '../../../core/models/answer_status.dart';
import '../../../core/models/error.dart';
import '../../../core/network/api_response.dart';
import '../data/models/pokemon.dart';

part 'pokemon_bloc.freezed.dart';
part 'pokemon_event.dart';
part 'pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final PokemonRepository pokemonRepository;

  PokemonBloc(this.pokemonRepository) : super(const PokemonState()) {
    on<PokemonEvent>((event, emit) {
      log(event.toString());
    });

    on<_GetPokemon>(_onGetPokemon);
    on<_CheckAnswer>(_onCheckAnswer);
    on<_ResetAnswerState>(_onResetAnswerState);
    on<_ShowResultDialog>(_onShowResultDialog);
  }

  Future<void> _onGetPokemon(_GetPokemon event, Emitter<PokemonState> emit) async {
    emit(state.copyWith(isLoading: true, error: null));

    try {
      final response = await pokemonRepository.getRandomPokemons();

      if (response.status == ResponseStatus.success) {
        final pokemons = response.pokemons;

        if (pokemons != null && pokemons.isNotEmpty) {
          final shuffled = List<Pokemon>.from(pokemons)..shuffle();
          emit(
            state.copyWith(
              mainPokemon: shuffled.first,
              pokemonsNames: shuffled.map((e) => e.name).toList(),
            ),
          );
        } else {
          emit(state.copyWith(error: MError(text: "No Pokémon found")));
        }
      } else {
        emit(state.copyWith(error: MError(text: response.message)));
      }
    } catch (e) {
      emit(state.copyWith(error: MError(text: e.toString())));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  void _onCheckAnswer(_CheckAnswer event, Emitter<PokemonState> emit) {
    final correct = state.mainPokemon?.name == event.name;
    emit(state.copyWith(answerStatus: correct ? Correct() : Incorrect()));

    if (correct) {
      add(const _ShowResultDialog(true));
    }
  }

  void _onResetAnswerState(_ResetAnswerState event, Emitter<PokemonState> emit) {
    emit(state.copyWith(answerStatus: null));
  }

  void _onShowResultDialog(_ShowResultDialog event, Emitter<PokemonState> emit) {
    emit(state.copyWith(showResultDialog: true));
  }
}

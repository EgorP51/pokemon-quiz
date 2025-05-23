part of 'pokemon_bloc.dart';

@freezed
class PokemonState with _$PokemonState, EquatableMixin {
  const PokemonState._();

  const factory PokemonState({
    @Default(null) Pokemon? mainPokemon,
    @Default([]) List<String> pokemonsNames,
    @Default(false) bool isLoading,
    @Default(false) bool showResultDialog,
    MError? error,
    AnswerStatus? answerStatus,

  }) = _PokemonState;

  @override
  List<Object?> get props => [
    mainPokemon,
    pokemonsNames,
    isLoading,
    error,
    showResultDialog,
    answerStatus,
  ];
}

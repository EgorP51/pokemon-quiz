part of 'pokemon_bloc.dart';

@freezed
class PokemonEvent with _$PokemonEvent {
  const factory PokemonEvent.initial() = _Initial;
  const factory PokemonEvent.getPokemon() = _GetPokemon;
  const factory PokemonEvent.checkAnswer(String name) = _CheckAnswer;
  const factory PokemonEvent.resetAnswerState() = _ResetAnswerState;
  const factory PokemonEvent.showResultDialog(bool show) = _ShowResultDialog;
}

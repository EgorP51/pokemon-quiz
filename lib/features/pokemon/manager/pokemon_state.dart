part of 'pokemon_bloc.dart';

@freezed
class PokemonState with _$PokemonState {
  const PokemonState._();

  const factory PokemonState({
    @Default(false) bool isLoading,
    @Default(null) MError? error,
  }) = _PokemonState;
}

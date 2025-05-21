import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';
part 'pokemon_bloc.freezed.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonBloc() : super(const PokemonState.initial()) {
    on<PokemonEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

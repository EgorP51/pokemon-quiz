import 'package:pokemon_quiz/features/pokemon/data/models/pokemon.dart';

import '../../../../core/network/api_response.dart';

class PokemonResponse extends ApiResponse {
  const PokemonResponse(super.status, super.message, this.pokemons);

  PokemonResponse.success(List<Pokemon> data)
    : this(ResponseStatus.success, "", data);

  PokemonResponse.error(String message)
    : this(ResponseStatus.error, message, null);

  final List<Pokemon>? pokemons;
}

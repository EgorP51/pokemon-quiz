import 'dart:math';

import 'package:dio/dio.dart';

import '../models/pokemon.dart';
import '../models/pokemon_response.dart';

class PokemonRemoteDatasource {
  final Dio dio;
  final int minId = 1;
  final int maxId = 898;

  PokemonRemoteDatasource(this.dio);

  Future<PokemonResponse> getRandomPokemons() async {
    final random = Random();
    final Set<int> ids = {};

    while (ids.length < 4) {
      ids.add(random.nextInt(maxId - minId + 1) + minId);
    }

    try {
      final responses = await Future.wait(
        ids.map((id) async {
          try {
            final res = await dio.get('https://pokeapi.co/api/v2/pokemon/$id');
            final data = res.data;

            final imageUrl =
                data['sprites']?['other']?['official-artwork']?['front_default'];
            if (imageUrl != null) {
              return Pokemon.fromJson(data);
            }
          } catch (_) {

          }
          return null;
        }),
      );

      final validPokemons = responses.whereType<Pokemon>().toList();

      if (validPokemons.length < 4) {
        return await getRandomPokemons();
      }

      return PokemonResponse.success(validPokemons);
    } catch (e) {
      return PokemonResponse.error("Failed to fetch Pokémon: ${e.toString()}");
    }
  }
}

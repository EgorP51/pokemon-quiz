import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'models/pokemon.dart';
import 'models/pokemon_response.dart';

class PokemonRepository {
  final Dio dio;
  final int minId = 1;
  final int maxId = 898;
  final int desiredCount = 4;

  PokemonRepository(this.dio);

  Future<PokemonResponse> getRandomPokemons() async {
    final Set<int> usedIds = {};
    final List<Pokemon> pokemons = [];

    try {
      while (pokemons.length < desiredCount) {
        final idsToFetch = _generateUniqueRandomIds(
          count: desiredCount - pokemons.length,
          exclude: usedIds,
        );

        usedIds.addAll(idsToFetch);

        final results = await Future.wait(idsToFetch.map(_fetchPokemonById));

        pokemons.addAll(results.whereType<Pokemon>());
      }

      return PokemonResponse.success(pokemons);
    } catch (e) {
      return PokemonResponse.error("Failed to fetch Pokémon: $e");
    }
  }

  Set<int> _generateUniqueRandomIds({
    required int count,
    Set<int> exclude = const {},
  }) {
    final random = Random();
    final Set<int> ids = {};

    while (ids.length < count) {
      final id = random.nextInt(maxId - minId + 1) + minId;
      if (!exclude.contains(id)) {
        ids.add(id);
      }
    }

    return ids;
  }

  Future<Pokemon?> _fetchPokemonById(int id) async {
    try {
      final response = await dio.get('https://pokeapi.co/api/v2/pokemon/$id');
      final data = response.data;

      final imageUrl =
          data['sprites']?['other']?['official-artwork']?['front_default'];
      if (imageUrl != null) {
        return Pokemon.fromJson(data);
      }
    } catch (e) {
      // Optionally log or handle specific status codes
      if (kDebugMode) {
        print('Error fetching Pokémon with ID $id: $e');
      }
    }
    return null;
  }
}

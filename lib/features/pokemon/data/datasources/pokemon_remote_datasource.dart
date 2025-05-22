import 'package:dio/dio.dart';

import '../models/pokemon_model.dart';

class PokemonRemoteDatasource {
  final Dio dio;

  PokemonRemoteDatasource(this.dio);

  Future<PokemonModel> getRandomPokemon() async {
    final response = await dio.get('https://pokeapi.co/api/v2/pokemon/${_getRandomId()}');
    return PokemonModel.fromJson(response.data);
  }

  int _getRandomId() => 1 + (DateTime.now().millisecondsSinceEpoch % 150);
}

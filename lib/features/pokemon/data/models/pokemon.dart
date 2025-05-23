class Pokemon {
  final String name;
  final String imageUrl;
  final int? height;
  final int? weight;
  final int? baseExperience;
  final List<String>? types;
  final PokemonStats? stats;

  Pokemon({
    required this.name,
    required this.imageUrl,
    this.height,
    this.weight,
    this.baseExperience,
    this.types,
    this.stats,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'] ?? '',
      imageUrl:
          json['sprites']?['other']?['official-artwork']?['front_default'] ??
          '',
      height: json['height'],
      weight: json['weight'],
      baseExperience: json['base_experience'],
      types:
          (json['types'] as List?)
              ?.map((t) => t['type']['name'].toString())
              .toList(),
      stats:
          json['stats'] != null
              ? PokemonStats.fromJson(json['stats'] as List)
              : null,
    );
  }
}

class PokemonStats {
  final int? hp;
  final int? attack;
  final int? defense;
  final int? specialAttack;
  final int? specialDefense;
  final int? speed;

  const PokemonStats({
    this.hp,
    this.attack,
    this.defense,
    this.specialAttack,
    this.specialDefense,
    this.speed,
  });

  factory PokemonStats.fromJson(List<dynamic> statsJson) {
    int? getStat(String name) {
      return statsJson.firstWhere(
        (element) => element['stat']['name'] == name,
        orElse: () => null,
      )?['base_stat'];
    }

    return PokemonStats(
      hp: getStat('hp'),
      attack: getStat('attack'),
      defense: getStat('defense'),
      specialAttack: getStat('special-attack'),
      specialDefense: getStat('special-defense'),
      speed: getStat('speed'),
    );
  }
}

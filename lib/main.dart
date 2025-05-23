import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/pokemon/data/datasources/pokemon_remote_datasource.dart';
import 'features/pokemon/manager/pokemon_bloc.dart';
import 'features/pokemon/presentation/start_game_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => PokemonBloc(PokemonRemoteDatasource(Dio())),
          ),
        ],
        child: MaterialApp(
          title: "Who's That Pokémon?",
          home: const StartGamePage(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}

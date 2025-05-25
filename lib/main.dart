import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon_quiz/features/auth/data/auth_repository.dart';
import 'package:pokemon_quiz/features/auth/data/user_repository.dart';
import 'package:pokemon_quiz/features/auth/manager/auth_bloc.dart';

import 'features/pokemon/data/pokemon_repository.dart';
import 'features/pokemon/manager/pokemon_bloc.dart';
import 'features/pokemon/presentation/start_game_page.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
            create: (context) => PokemonBloc(PokemonRepository(Dio())),
          ),
          BlocProvider(
            create:
                (context) =>
                    AuthBloc(AuthRepository(), UserRepository())
                      ..add(const AuthEvent.authCheckRequested()),
          ),
        ],
        child: MaterialApp(
          home: const StartGamePage(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}

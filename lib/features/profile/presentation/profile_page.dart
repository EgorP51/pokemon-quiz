import 'package:flutter/material.dart';
import 'package:pokemon_quiz/core/ui/style.dart';
import 'package:pokemon_quiz/features/profile/presentation/account_settings.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kRed,
        iconTheme: IconThemeData(color: kWhite),
      ),
      body: AccountSettings(),
    );
  }
}

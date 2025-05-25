import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_quiz/core/ui/style.dart';

import '../../auth/manager/auth_bloc.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.error != null) {
          log(state.error!.text);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error!.text), backgroundColor: kRed),
          );
        }
      },
      builder: (context, state) {
        return GestureDetector(
          onHorizontalDragEnd:
              Platform.isAndroid
                  ? (details) {
                    if (details.primaryVelocity! > 0) {
                      Navigator.of(context).pop();
                    }
                  }
                  : null,
          child: Stack(
            children: [
              Scaffold(
                body: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child:
                        state.user == null ||
                                (state.user != null &&
                                        state.user!.uid == '-1' ||
                                    state.user!.uid!.isEmpty)
                            ? _unauthenticated(context)
                            : _authenticated(state, context),
                  ),
                ),
              ),
              if (state.isLoading)
                const Center(child: CircularProgressIndicator()),
            ],
          ),
        );
      },
    );
  }

  _authenticated(AuthState state, BuildContext context) {
    return Column(
      children: [
        state.user!.photoUrl != null
            ? CircleAvatar(
              radius: 50,
              foregroundColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(state.user!.photoUrl!),
              ),
            )
            : SizedBox(),
        if (state.user!.name != null) const SizedBox(height: 16),
        if (state.user!.name != null)
          Text(
            state.user!.name!,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Fredoka',
            ),
          ),
        if (state.user!.email != null) const SizedBox(height: 8),
        if (state.user!.email != null)
          Text(
            state.user!.email!,
            style: TextStyle(fontSize: 16, fontFamily: 'Fredoka'),
          ),
        const SizedBox(height: 16),
        const Spacer(),
        CupertinoButton(
          onPressed:
              () => context.read<AuthBloc>().add(const AuthEvent.signedOut()),
          color: kRed,
          child: Text(
            'Sign out',
            style: TextStyle(color: kWhite, fontFamily: 'Fredoka'),
          ),
        ),
      ],
    );
  }

  _unauthenticated(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.asset('assets/img/guy.png')),
        Text(
          'Login to your account',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Fredoka',
          ),
        ),

        Text(
          'Open new possibilities with your account',
          style: TextStyle(fontSize: 16, fontFamily: 'Fredoka'),
        ),
        const SizedBox(height: 16),
        if (Platform.isAndroid)
          SizedBox(
            width: double.infinity,
            child: CupertinoButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signInByGoogle());
              },
              color: kBlue,
              child: Text(
                'Google',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Fredoka',
                  color: kWhite,
                ),
              ),
            ),
          ),
        const SizedBox(height: 8),
        if (Platform.isIOS)
          SizedBox(
            width: double.infinity,
            child: CupertinoButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signInByApple());
              },
              color: kBlack,
              child: Text(
                'Apple',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Fredoka',
                  color: kWhite,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

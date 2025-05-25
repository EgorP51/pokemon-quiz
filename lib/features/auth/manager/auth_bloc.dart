import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/models/error.dart';
import '../../../core/models/user_model.dart';
import '../data/auth_repository.dart';
import '../data/user_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  AuthBloc(this._authRepository, this._userRepository)
    : super(const AuthState()) {
    on<_AuthCheckRequested>(_onAuthCheckRequested);
    on<_SignInByGoogle>(_onSignInByGoogle);
    on<_SignInByApple>(_onSignInByApple);
    on<_SignedOut>(_onSignedOut);
  }

  Future<void> _onAuthCheckRequested(
    _AuthCheckRequested event,
    Emitter<AuthState> emit,
  ) async {
    await _handleAuthFlow(emit, () async {
      final user = await _authRepository.getCurrentUser();

      if ((user.uid ?? '').isNotEmpty && user.uid != '-1') {
        log('[AuthBloc] Authenticated user: ${user.uid}');
      } else {
        log('[AuthBloc] No user logged in');
      }

      emit(state.copyWith(user: user));
    });
  }

  Future<void> _onSignInByGoogle(
    _SignInByGoogle event,
    Emitter<AuthState> emit,
  ) async {
    await _handleAuthFlow(emit, () async {
      await _authRepository.signOut();
      final user = await _authRepository.signInWithGoogle();
      if (user == null) return;

      final writtenUser = await _userRepository.writeUser(user);
      emit(state.copyWith(user: writtenUser));
    });
  }

  Future<void> _onSignInByApple(
    _SignInByApple event,
    Emitter<AuthState> emit,
  ) async {
    await _handleAuthFlow(
      emit,
      () async {
        await _authRepository.signOut();
        final user = await _authRepository.signInWithApple();
        if (user == null) return;

        final writtenUser = await _userRepository.writeUser(user);
        emit(state.copyWith(user: writtenUser));
      },
      handleError: (e) {
        final text =
            e.toString().contains('AuthorizationErrorCode.unknown')
                ? 'Something went wrong during login. Please try again.'
                : e.toString();
        return MError(text: text);
      },
    );
  }

  Future<void> _onSignedOut(_SignedOut event, Emitter<AuthState> emit) async {
    await _handleAuthFlow(emit, () async {
      await _authRepository.signOut();
      emit(state.copyWith(user: UserM.emptyUser));
    });
  }

  Future<void> _handleAuthFlow(
    Emitter<AuthState> emit,
    Future<void> Function() action, {
    MError Function(Object error)? handleError,
  }) async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      await action();
    } catch (e) {
      final error = handleError?.call(e) ?? MError(text: e.toString());
      emit(state.copyWith(error: error));
      rethrow;
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }
}

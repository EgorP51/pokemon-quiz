part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    UserM? user,
    @Default(false) bool isLoading,
    @Default(null) MError? error,
  }) = _AuthState;
}

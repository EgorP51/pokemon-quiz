part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = _AuthCheckRequested;

  const factory AuthEvent.signInByGoogle() = _SignInByGoogle;

  const factory AuthEvent.signInByApple() = _SignInByApple;

  const factory AuthEvent.signedOut() = _SignedOut;
}

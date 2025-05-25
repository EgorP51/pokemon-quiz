import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math' as math;

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../../core/models/user_model.dart';

class AuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  AuthRepository();

  Future<UserM> getCurrentUser() async {
    final fbUser = _firebaseAuth.currentUser;
    return _mapFirebaseUserToUserM(fbUser);
  }

  Future<UserM?> signInWithGoogle() async {
    try {
      final clientId =
          Platform.isIOS
              ? Firebase.app().options.iosClientId
              : Firebase.app().options.androidClientId;

      final googleUser =
          await GoogleSignIn(scopes: ['email'], clientId: clientId).signIn();

      final googleAuth = await googleUser?.authentication;
      if (googleAuth == null) return null;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _firebaseAuth.signInWithCredential(
        credential,
      );
      return _mapFirebaseUserToUserM(
        userCredential.user,
        loginMethod: 'google',
      );
    } catch (_) {
      rethrow;
    }
  }

  Future<UserM?> signInWithApple() async {
    try {
      if (Platform.isIOS) {
        final rawNonce = _generateNonce();
        final nonce = _sha256ofString(rawNonce);

        final appleCredential = await SignInWithApple.getAppleIDCredential(
          scopes: [
            AppleIDAuthorizationScopes.email,
            AppleIDAuthorizationScopes.fullName,
          ],
          nonce: nonce,
        );

        final oauthCredential = OAuthProvider("apple.com").credential(
          idToken: appleCredential.identityToken,
          rawNonce: rawNonce,
          accessToken: appleCredential.authorizationCode,
        );

        final credential = await _firebaseAuth.signInWithCredential(
          oauthCredential,
        );
        return _mapFirebaseUserToUserM(credential.user, loginMethod: 'apple');
      } else {
        final appleProvider =
            AppleAuthProvider()
              ..addScope('email')
              ..addScope('name');

        final credential = await _firebaseAuth.signInWithProvider(
          appleProvider,
        );
        return _mapFirebaseUserToUserM(credential.user, loginMethod: 'apple');
      }
    } on SignInWithAppleAuthorizationException catch (e) {
      if (e.code == AuthorizationErrorCode.canceled) {
        log('== sign in was canceled by the user ==');
        return null;
      }
      rethrow;
    } on PlatformException catch (e) {
      throw PlatformException(code: e.code, message: e.message);
    } catch (_) {
      rethrow;
    }
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _firebaseAuth.signOut();
  }

  UserM _mapFirebaseUserToUserM(User? user, {String? loginMethod}) {
    if (user == null) {
      return UserM(
        uid: '',
        name: null,
        email: null,
        loginMethod: null,
        photoUrl: null,
      );
    }
    return UserM(
      uid: user.uid,
      name: user.displayName,
      email: user.email,
      loginMethod: loginMethod ?? user.providerData.first.providerId,
      photoUrl: user.photoURL,
    );
  }

  String _generateNonce([int length = 32]) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = math.Random.secure();
    return List.generate(
      length,
      (_) => charset[random.nextInt(charset.length)],
    ).join();
  }

  String _sha256ofString(String input) {
    final bytes = utf8.encode(input);
    return sha256.convert(bytes).toString();
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../../../core/models/user_model.dart';

class UserRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  CollectionReference get _usersCollection => _firestore.collection('users');

  Future<UserM> writeUser(UserM user) async {
    try {
      final docRef = _usersCollection.doc(user.uid);
      final snapshot = await docRef.get();

      if (snapshot.exists) {
        return UserM.fromJson(snapshot.data() as Map<String, dynamic>);
      }

      await docRef.set(user.toJson());
      return user;
    } catch (e) {
      _logError('writing', e);
      throw Exception('Failed to write user: $e');
    }
  }

  Future<UserM> readUser(String uid) async {
    try {
      final doc = await _usersCollection.doc(uid).get();
      if (!doc.exists) throw Exception('User not found');
      return UserM.fromJson(doc.data() as Map<String, dynamic>);
    } catch (e) {
      _logError('reading', e);
      throw Exception('Failed to read user: $e');
    }
  }

  Future<UserM> updateUser(UserM user) async {
    try {
      final docRef = _usersCollection.doc(user.uid);
      final snapshot = await docRef.get();

      if (snapshot.exists) {
        await docRef.update(user.toJson());
      } else {
        await docRef.set(user.toJson());
      }

      return user;
    } catch (e) {
      _logError('updating', e);
      throw Exception('Failed to update user: $e');
    }
  }

  void _logError(String action, Object error) {
    if (kDebugMode) {
      print('Error $action user: $error');
    }
  }
}

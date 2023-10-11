import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../repository/auth_repository.dart';
import '../repository/user_firestore.dart';

class AuthProvider extends ChangeNotifier {
  AuthRepository repository = AuthRepository();
  AuthFirestore dataRepo = AuthFirestore();

  Stream onAuthStateChange() {
    return FirebaseAuth.instance.authStateChanges();
  }

  Future<void> loginUser(String email, String password) async {
    try {
      await repository.login(email, password);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> register(String name, String email, String password) async {
    try {
      final user = await repository.register(name, email, password);
      await dataRepo.saveData(user.user!.uid, email, name);
    } catch (e) {
      rethrow;
    }
  }

   Future<void> data(String name, String email, String gpsaddress) async {
    try {
      final data = await repository.register(name, email, gpsaddress);
      await dataRepo.saveData(data.user!.uid, email, gpsaddress);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logout() async {
    return await repository.logout();
  }
}
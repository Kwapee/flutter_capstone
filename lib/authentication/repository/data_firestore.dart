import 'package:cloud_firestore/cloud_firestore.dart';

class AuthFirestore {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<void> saveData(
    String uid,
    String email,
    String name,
    String gpsaddress,
  ) async {
    try {
      await _firebaseFirestore.collection("data").doc(uid).set({
        "email": email,
        "name": name,
        "gps": gpsaddress,
      });
    } catch (e) {
      rethrow;
    }
  }
}

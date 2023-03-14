

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future login(String email, String password) async {

    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, password: password);
  }
  Future signup(String email, String password) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email, password: password);
  }
}
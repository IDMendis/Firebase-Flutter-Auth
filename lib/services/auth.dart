import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign in anonymously
  Future<User?> signInAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      print("✅ Signed in anonymously. UID: ${user?.uid}");
      return user;
    } catch (err) {
      print("❌ Error signing in anonymously: $err");
      return null;
    }
  }
}

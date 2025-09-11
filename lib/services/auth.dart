import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_flutter/models/UserModel.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

//createa user from uid
UserModel? _userWithFirebaseUserUid(User? user){
  return user != null ? UserModel(uid: user.uid): null;
}

//create the stream for checking auth changes in the user
Stream<UserModel?> get user {
  return _auth.authStateChanges().map(_userWithFirebaseUserUid);
}




  // Sign in anonymously
  Future<UserModel?> signInAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      print("✅ Signed in anonymously. UID: ${user?.uid}");
      print(user?.uid);
      return _userWithFirebaseUserUid(user);
    } catch (err) {
      print("❌ Error signing in anonymously: $err");
      return null;
    }
  }
}

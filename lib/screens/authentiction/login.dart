import 'package:flutter/material.dart';
import 'package:firebase_flutter/services/auth.dart';

// ignore: camel_case_types
class Sign_In extends StatefulWidget {
  const Sign_In({super.key});

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  final AuthServices _auth = AuthServices(); // ✅ fixed name

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign In"), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          child: const Text("Sign In Anonymously"),
          onPressed: () async {
            dynamic result = await _auth.signInAnonymously();
            if (result == null) {
              print("❌ Error signing in Anonymously");
            } else {
              //print("✅ Signed in successfully with UID: ${result.uid}");
              print("signed in");
              print(result);
            }
          },
        ),
      ),
    );
  }
}

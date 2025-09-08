import 'package:firebase_flutter/screens/authentiction/authenticate.dart';
import 'package:flutter/material.dart';

//wrapper eka stateless wdhata hadanna

class Wrapper extends StatelessWidget{
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context){
    return Authenticate();
  }
}
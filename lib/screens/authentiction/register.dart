import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});
@override
// ignore: override_on_non_overriding_member
State<Register> createState() => _RegisterState();
}
class _RegisterState extends State<Register> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Register Screen'),
    );
  }
}
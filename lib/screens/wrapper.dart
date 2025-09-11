import 'package:firebase_flutter/models/UserModel.dart';
import 'package:firebase_flutter/screens/authentiction/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


//wrapper eka stateless wdhata hadanna

class Wrapper extends StatelessWidget{
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context){
// return either home or authenticate widget
final user = Provider.of<UserModel?>(context);// user ta ena data tika matha thmai home ekda authentication ekd pennanne kiyla decide krnne
print(user);

if(user == null){
    return Authenticate();
  }else{
    return Scaffold(
     appBar: AppBar(
      title: Text("Home Screen"),
      backgroundColor: Colors.black12,
      ),
    );
  }
  }
}
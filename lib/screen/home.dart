import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:untitled1/CORONA/home.dart';

class HomeScreen extends StatelessWidget {

  static MaterialPageRoute get route => MaterialPageRoute(
    builder: (context) =>  HomeScreen(),
  );

  @override
  Widget build(BuildContext context) {
    return home();
      // Scaffold(
      // appBar: AppBar(
      //   title: const Text('Signed in'),
      // ),
      // body: ,
      // body: Center(
      //   child: RaisedButton(
      //     onPressed: () {
      //       context.signOut();
      //     },
      //     child: const Text('Sign out'),
      //   ),
      // ),
    // );
  }
}
import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:untitled1/screen/auth/auth.dart';
import 'package:untitled1/screen/home.dart';
import 'CORONA/vaccin/vaccin_1.dart';
import 'config/palette.dart';
import 'screen/back_ground.dart';
// import 'package:lit_firebase_auth_ui_demo/lit_firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'CORONA/info_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LitAuthInit(
      authProviders: AuthProviders(
        emailAndPassword: true,
        anonymous: true,
      ),
      child: MaterialApp(
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.adaminaTextTheme(),
          accentColor: Palette.darkorange,
          appBarTheme: const AppBarTheme(
            brightness: Brightness.dark,
            color: Palette.darkBlue,
          ),
        ),
        debugShowCheckedModeBanner: false,
        title: 'Dhiraj_App',
        // home: vaccin1(),
        home: LitAuthState(
          authenticated: HomeScreen(),
          unauthenticated: AuthScreen(),
        ),
      ),
    );
  }
}

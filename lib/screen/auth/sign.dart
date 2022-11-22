import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:untitled1/config/palette.dart';
import 'package:untitled1/screen/auth/sign_in_up_bar.dart';
import 'title.dart';
import 'decoration_functions.dart';
import 'sign_in_up_bar.dart';

class SignIn extends StatelessWidget {
  // const SignIn({Key? key}) : super(key: key);
  const SignIn({
    // Key key,
    required this.onRegisterClicked,
  });
  // : super(key: key);

  final VoidCallback onRegisterClicked;
  @override
  Widget build(BuildContext context) {
    final isSubmmiting = context.isSubmitting();
    return SignInForm(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.centerLeft,
                child: LoginTitle(title: "Welcome "),
              ),
            ),
            Expanded(
              flex: 4,
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: EmailTextFormField(
                      decoration: signInInputDecoration(hintText: "Email"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: PasswordTextFormField(
                      decoration: signInInputDecoration(hintText: "Password"),
                    ),
                  ),
                  SignInBar(
                      isLoading: isSubmmiting,
                      label: "Sign In",
                      onPressed: () {
                        context.signInWithEmailAndPassword();
                      }),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      splashColor: Colors.white,
                      onTap: () {
                        onRegisterClicked?.call();
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          color: Palette.darkBlue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// © 2021 GitHub, Inc.
// Terms
// Pr

import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:untitled1/screen/auth/register.dart';
import 'package:untitled1/screen/back_ground.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'register.dart';
import 'sign.dart';
class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  ValueNotifier<bool> showsigninPage = ValueNotifier<bool>(true);
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();

    /// always write this function if you used the animation  features in application
    /// it related to the the memory potential

    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    /// this is inbuilt sign in sign out page in flutter
    //  return Scaffold(
    //    body: LitAuth(),
    //  );
    return Scaffold(
      body: LitAuth.custom(
        child: Stack(
          children: [
            SizedBox.expand(
              child: CustomPaint(
                painter: Backgroundpainter(
                  animation: _controller.view,
                ),
              ),
            ),
            /// SignIn(),
            ValueListenableBuilder(
                valueListenable: showsigninPage,
                builder: (context, value, child){
                  return value == true ? SignIn(
                      onRegisterClicked :(){
                        showsigninPage.value = false;
                        _controller.forward();
                      }
                  ) : Register(
                      onSignInPressed :(){
                        showsigninPage.value = true;
                        _controller.reverse( );
                      }
                  );
                })
          ],
        ),
      ),
    );
  }
}

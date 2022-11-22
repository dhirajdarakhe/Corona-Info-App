import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant.dart';
import '../home.dart';

class vaccin1 extends StatefulWidget {
  const vaccin1({Key? key}) : super(key: key);

  @override
  _vaccin1State createState() => _vaccin1State();
}

class _vaccin1State extends State<vaccin1> {
  Future<void>? _launched;
  String _phone = '';

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: EdgeInsets.only(left: 0, top: 30, right: 20),
                height: 330,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.white, Colors.white]),
                  // image: DecorationImage(
                  //     image: AssetImage("assets/images/virus.png"))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 10),
                      child: GestureDetector(
                        onTap: () {
                          // info();
                          Navigator.pushReplacement(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) => home()));
                        },
                        child: Icon(
                          Icons.home_outlined,
                          color: Colors.black, // add custom icons also
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 103),
                      child: Container(
                          child: Text(
                        "Register for COVID-19 vaccine ",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.redAccent,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    // SizedBox(
                    //   height: 5.0,
                    // ),
                    Stack(
                      children: <Widget>[
                        Expanded(
                          child: Image(
                              image:
                                  AssetImage("assets/images/covid_vaccin.png")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "> How to register for COVID-19 vaccine",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "STEP 1: Enter your mobile number\n\n"
                    "STEP 2: You will then get an OTP, enter the OTP and \t click on the “Verify” button\n\n"
                    "STEP 3: You will then be directed to the registration of the vaccination’ page\n\n"
                    "STEP 4: Next, choose one photo ID proof\n\n"
                    "STEP 5: Fill in your name, age, gender and upload an identity document\n\n"
                    "STEP 6: The page will then ask if you have any comorbidities\n\n"
                    "STEP 7: Everyone above 60 years are eligible. If you are 45 years + you will be required to upload doctor’s certificate as comorbidity proof",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.black87,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15,),
                  GestureDetector(
                      // padding: EdgeInsets.only(top: 20),,
                      onTap: () => setState(() {
                            _launched = _launchInBrowser(
                                'https://selfregistration.cowin.gov.in/');
                          }),
                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),

                          color: Colors.black12,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 20),
                              blurRadius: 30,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        width: 155,
                        height: 65,
                        child: Center(
                          child: Text(
                           "Register",style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

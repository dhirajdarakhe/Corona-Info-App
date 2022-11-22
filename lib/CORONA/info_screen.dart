import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/CORONA/constant.dart';

import 'boi.dart';
import 'home.dart';

class info extends StatefulWidget {
  const info({Key? key}) : super(key: key);

  @override
  _infoState createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: EdgeInsets.only(left: 0, top: 50, right: 20),
                height: 330,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xFF653466), Color(0xFF653466)]),
                  // image: DecorationImage(
                  //     image: AssetImage("assets/images/virus.png"))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
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
                          color: Colors.white, // add custom icons also
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 222),
                      child: Container(
                          child: Text(
                        "Get to know \nAbout Covid-19",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Stack(
                      children: <Widget>[
                        Expanded(
                          child: Image(
                              image: AssetImage("assets/images/hand.png")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Symptoms",
                    style: kSubTextStyle,
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 20,
                                  color: kActiveShadowColor)
                            ]),
                        child: Column(
                          children: <Widget>[
                            Image.asset("assets/images/headache.png"),
                            Text(
                              "Headache",
                              style: TextStyle(fontFamily: "Poppins"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 20,
                                  color: kActiveShadowColor)
                            ]),
                        child: Column(
                          children: <Widget>[
                            Image.asset("assets/images/caugh.png"),
                            Text(
                              "Caugh",
                              style: TextStyle(fontFamily: "Poppins"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 20,
                                  color: kActiveShadowColor)
                            ]),
                        child: Column(
                          children: <Widget>[
                            Image.asset("assets/images/fever.png"),
                            Text(
                              "Fever",
                              style: TextStyle(fontFamily: "Poppins"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Prevention",
                    style: kSubTextStyle,
                  ),
                  SizedBox(height: 10),
                  Stack(children: [
                    Container(
                      height: 155,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 8),
                            blurRadius: 24,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                    ),
                    Image.asset("assets/images/wear_mask.png"),
                    SizedBox(
                      height: 15,
                    ),
                    Positioned(
                      left: 140,
                      width: MediaQuery.of(context).size.width - 170,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Wear face mask",
                                  style: kTitleTextstyle.copyWith(
                                      fontSize: 16, fontFamily: "Poppins")),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                                style: TextStyle(
                                    fontSize: 12, fontFamily: "Poppins"),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
                  SizedBox(height: 16),
                  Text(
                    "Prevention",
                    style: kSubTextStyle,
                  ),
                  SizedBox(height: 10),
                  Stack(children: [
                    Container(
                      height: 155,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 8),
                            blurRadius: 24,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                    ),
                    Image.asset("assets/images/wash_hands.png"),
                    SizedBox(
                      height: 15,
                    ),
                    Positioned(
                      left: 140,
                      width: MediaQuery.of(context).size.width - 170,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Wash your hands",
                                  style: kTitleTextstyle.copyWith(
                                      fontSize: 16, fontFamily: "Poppins")),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                                style: TextStyle(
                                    fontSize: 12, fontFamily: "Poppins"),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

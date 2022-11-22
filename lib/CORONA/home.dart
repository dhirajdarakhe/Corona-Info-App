import 'dart:convert';
import 'dart:io';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/CORONA/pdf/pdf.dart';
import 'package:untitled1/CORONA/vaccin/vaccin_1.dart';
import 'package:url_launcher/url_launcher.dart';
import 'constant.dart';
import 'info_screen.dart';
import 'list.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'boi.dart';
import 'package:http/http.dart' as http;

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

final controller = ScrollController();

class _homeState extends State<home> {
  double offset = 0;
  int _counter = 0;
  var Confirmed;
  var death;
  String selectedValue = "India";
  @override
  void initState() {
    // TODO: implement initState
    getData(selectedValue);
    super.initState();
  }

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
  void getData(String Contry) async {
    http.Response reponse =
        await http.get(Uri.parse("https://api.covid19api.com/summary"));
    String data = reponse.body;
    if (Contry == "India") {
      setState(() {
        Confirmed = jsonDecode(data)['Countries'][76]['TotalConfirmed'];
        death = jsonDecode(data)['Countries'][76]['TotalDeaths'];
        // print(death);
      });
    } else if (Contry == "Afghanistan") {
      setState(() {
        Confirmed = jsonDecode(data)['Countries'][8]['TotalConfirmed'];
        death = jsonDecode(data)['Countries'][8]['TotalDeaths'];
        // print(death);
      });
    } else if (Contry == "Australia") {
      setState(() {
        Confirmed = jsonDecode(data)['Countries'][8]['TotalConfirmed'];
        death = jsonDecode(data)['Countries'][8]['TotalDeaths'];
        // print(death);
      });
    } else if (Contry == "Austria") {
      setState(() {
        Confirmed = jsonDecode(data)['Countries'][9]['TotalConfirmed'];
        death = jsonDecode(data)['Countries'][9]['TotalDeaths'];
        // print(death);
      });
    } else if (Contry == "Japan") {
      setState(() {
        Confirmed = jsonDecode(data)['Countries'][84]['TotalConfirmed'];
        death = jsonDecode(data)['Countries'][84]['TotalDeaths'];
        print(death);
      });
    }
  }
  Future<void>? _launched;
  DropdownButton<String> getItemList_for_ANDROID() {
    List<DropdownMenuItem<String>> Item = [];
    for (int i = 0; i < currenciesList.length; i++) {
      String item = currenciesList[i];
      var eachItem = DropdownMenuItem(
        child: Text(item),
        value: item,
      );
      Item.add(eachItem);
    }
    return DropdownButton<String>(
      isExpanded: true,
      underline: SizedBox(),
      value: selectedValue,
      items: Item,
      onChanged: (value) {
        setState(() {
          selectedValue = value!;
          getData(selectedValue);
          print(value);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("COVI_19"), backgroundColor: Color(0xFF173480)),
      drawer: Drawer(
        // / child: // Populate the Drawer in the next step.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Image.asset(
                "assets/images/map.png",
                fit: BoxFit.contain,
              ),
            ),
            ListTile(
              title: const Text("Know About C 19"),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => info()));
              },
            ),
            ListTile(
              title: const Text("Download the vaccination Certificate"),
              onTap: () => setState(() {
                _launched = _launchInBrowser(
                    'https://selfregistration.cowin.gov.in/');
              }),
            ),
            ListTile(
              title: const Text("Download the pdf"),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => pdf()));
              },
            ),
            ListTile(
              title: const Text("Vaccination Registration"),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => vaccin1()));
              },
            ),
            ListTile(
              title: const Text('Contact me'),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            MyHomePage1(title: "contact me")));
              },
            ),
            ListTile(
              title: const Text("Log Out"),
              onTap: () {
                context.signOut();
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            ClipPath(
                clipper: MyClipper(),
                child: Container(
                  padding: EdgeInsets.only(left: 2, top: 15, right: 20),
                  height: 289,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xFF173480), Color(0xFF173480)]),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(
                        height: 35.0,
                      ),
                      Stack(
                        children: <Widget>[
                          Expanded(
                            child: Image(
                                image: AssetImage("assets/images/coronaa.jpg")),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Color(0xFFE5E5E5),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.place_outlined,
                    color: Color(0xFF173480),
                    // add custom icons also
                  ),
                  SizedBox(width: 10),
                  Expanded(child: getItemList_for_ANDROID()),
                  // Expanded(
                  //   child: DropdownButton(
                  //     isExpanded: true,
                  //     underline: SizedBox(),
                  //     // icon: SvgPicture.asset("assets/icons/dropdown.svg"),
                  //     value: "Indonesia",
                  //     items: ['Indonesia', 'Bangladesh', 'United States', 'Japan']
                  //         .map<DropdownMenuItem<String>>((String value) {
                  //       return DropdownMenuItem<String>(
                  //         value: value,
                  //         child: Text(
                  //           value,
                  //           style: TextStyle(fontFamily: "Poppins"),
                  //         ),
                  //       );
                  //     }).toList(),
                  //     onChanged: (value) {
                  //       // value = value;
                  //     },
                  //   ),
                  // )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Case Update", style: kTitleTextstyle),
                          ])),
                          SizedBox(
                            height: 6,
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Newest update March 28",
                                style: TextStyle(color: kTextLightColor))
                          ]))
                        ],
                      ),
                      Spacer(),
                      Text("See details",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins")),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 30,
                            color: kShadowColor,
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kInfectedColor.withOpacity(0.26)),
                              child: Container(
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.transparent,
                                    border: Border.all(
                                        color: kInfectedColor, width: 2)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "$Confirmed",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: kInfectedColor,
                                  fontFamily: "Poppins"),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text("TotalInfected", style: kSubTextStyle)
                          ],
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kDeathColor.withOpacity(0.26)),
                              child: Container(
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.transparent,
                                    border: Border.all(
                                        color: kDeathColor, width: 2)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "$death",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: kDeathColor,
                                  fontFamily: "Poppins"),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text("TotalDeaths", style: kSubTextStyle)
                          ],
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        // Column(
                        //   children: <Widget>[
                        //     Container(
                        //       height: 25,
                        //       width: 25,
                        //       decoration: BoxDecoration(
                        //           shape: BoxShape.circle,
                        //           color: kRecovercolor.withOpacity(0.26)),
                        //       child: Container(
                        //         margin: EdgeInsets.all(5),
                        //         decoration: BoxDecoration(
                        //             shape: BoxShape.circle,
                        //             color: Colors.transparent,
                        //             border: Border.all(
                        //                 color: kRecovercolor, width: 2)),
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       height: 10,
                        //     ),
                        //     // Text(
                        //     //   "$death",
                        //     //   style: TextStyle(
                        //     //       fontSize: 35,
                        //     //       color: kRecovercolor,
                        //     //       fontFamily: "Poppins"),
                        //     // ),
                        //     SizedBox(
                        //       height: 6,
                        //     ),
                        //     Text("Recovered", style: kSubTextStyle)
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Spread Of Virus",
                                style: kTitleTextstyle),
                          ])),
                        ],
                      ),
                      Spacer(),
                      Text("See details",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins")),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(20),
                    height: 178,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 30,
                          color: kShadowColor,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/images/map.png",
                      fit: BoxFit.contain,
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

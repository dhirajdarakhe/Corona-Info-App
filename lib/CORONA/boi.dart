// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class MyApp extends StatelessWidget {
//   String telephoneNumber = "7218724337";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.brown,
//         title: Text(
//           ''
//           'BACK',
//           style: TextStyle(fontSize: 15),
//         ),
//       ),
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             CircleAvatar(
//               backgroundImage: AssetImage("ios/dhira.jpeg"),
//               backgroundColor: Colors.white,
//               radius: 90.0,
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Text(
//               'DHIRAJ   D.',
//               textAlign: TextAlign.center,
//               overflow: TextOverflow.ellipsis,
//               style: const TextStyle(
//                 fontFamily: 'BonheurRoyale',
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20.0,
//                 color: Colors.black,
//               ),
//             ),
//             SizedBox(
//               height: 6,
//             ),
//             Center(
//               child: Text(
//                 '     PICT, PUNE\n' 'Flutter Developer',
//                 style: const TextStyle(
//                   fontFamily: 'SourceSansPro',
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   letterSpacing: 1.2,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 30.0,
//               width: 200.0,
//               child: Divider(
//                 color: Colors.white,
//               ),
//             ),
//             // GestureDetector(
//             //
//             //   child:
//               Card(
//                 margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
//                 child: GestureDetector(
//                   child: Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: ListTile(
//                         leading: Icon(
//                           Icons.phone,
//                           color: Colors.black45,
//                         ),
//                         title: Text(
//                           "+91 7218724337",
//                           style: TextStyle(
//                             fontFamily: "Poppins",
//                             color: Colors.black45,
//                           ),
//                         ),
//                       )),
//                 ),
//               ),
//             // ),
//             Card(
//                 margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
//                 // padding: EdgeInsets.all(15.0),
//
//                 child: Padding(
//                     padding: EdgeInsets.all(10.0),
//                     child: ListTile(
//                       leading: Icon(
//                         Icons.email,
//                       ),
//                       // SizedBox(width: 10.0,),
//                       title: Text("dhirajdarakhe03@gmail.com",
//                           style: TextStyle(
//                               color: Colors.black45,
//                               fontFamily: "Poppins",
//                               fontSize: 14)),
//                     ))),
//           ],
//         ),
//       ),
//       // ],
//     );
//     //   ),
//     // );
//   }
// }
//
// //
// // MaterialApp(
// // theme: ThemeData.dark().copyWith(
// // primaryColor: Color(0xFF0A0E21),
// // // accentColor: Colors.black, //    <--         to change the color of the button icon
// // scaffoldBackgroundColor: Color(0xFF0A0E21)
// // ),
// // );
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class MyHomePage1 extends StatefulWidget {
  MyHomePage1({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePage1State createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
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

  Future<void> _launchInWebViewOrVC(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 65),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("ios/dhira.jpeg"),
                  backgroundColor: Colors.white,
                  radius: 90.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'DHIRAJ   D.',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontFamily: 'BonheurRoyale',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Center(
                  child: Text(
                    '     PICT, PUNE\n' 'Flutter Developer',
                    style: const TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  // padding: EdgeInsets.only(lef),
                  height: 80,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // color: Colors.black12,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 30,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      FlatButton(
                        padding: EdgeInsets.only(
                            left: 5, top: 15, bottom: 15, right: 65),
                        color: Colors.white54,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        onPressed: () => setState(() {
                          _launched = _makePhoneCall('tel: 7218724337');
                        }),
                        child: Text(
                          '  📞     +91   7218724337',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  // padding: EdgeInsets.only(lef),
                  height: 70,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    // color: Colors.black12,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 30,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      FlatButton(
                        padding: EdgeInsets.only(
                            left: 5, top: 20, bottom: 19, right: 15),
                        color: Colors.white54,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                        onPressed: () => setState(() {
                          _launched = _launchInBrowser(
                              'https://mail.google.com/mail/u/0/#inbox?compose=DmwnWrRlRQckHtwSMCvlTffhgVtLxjbptgwgXkVMxQfzLWxWZBZfSbzsnlHmKnlZpFFnHwLGWBWl');
                        }),
                        child: Text(
                          ' ✉    dhirajdarakhe03gmail.com',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ],
                  ),
                  // ),
                ),
                SizedBox(
                  height: 42,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      // padding: EdgeInsets.only(top: 20),,
                        onPressed: () => setState(() {
                          _launched = _launchInBrowser(
                              'https://www.instagram.com/dhiraj_darakhe/');
                        }),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // color: Colors.black12,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 20),
                                blurRadius: 30,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          width: 75,
                          height: 75,
                          child: Image(
                            image: AssetImage('assets/images/kk.jpeg'),
                          ),
                        )),
                    FlatButton(
                      // padding: EdgeInsets.only(top: 20),,
                        onPressed: () => setState(() {
                          _launched = _launchInBrowser(
                              'https://www.linkedin.com/in/dhiraj-darakhe-751201215');
                        }),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // color: Colors.black12,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 20),
                                blurRadius: 30,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          width: 75,
                          height: 75,
                          child: Image(
                            image: AssetImage('assets/images/link.jpeg'),
                          ),
                        )),
                    FlatButton(
                        onPressed: () => setState(() {
                          _launched = _launchInBrowser(
                              'https://github.com/dhirajdarakhe');
                        }),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // color: Colors.black12,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 20),
                                blurRadius: 30,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          width: 75,
                          height: 75,
                          child: Image(
                            image: AssetImage('assets/images/git.jpeg'),
                          ),
                        )),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

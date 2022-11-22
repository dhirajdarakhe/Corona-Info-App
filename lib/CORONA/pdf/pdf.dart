import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant.dart';
import '../home.dart';

class pdf extends StatefulWidget {
  const pdf({Key? key}) : super(key: key);

  @override
  _pdfState createState() => _pdfState();
}

class _pdfState extends State<pdf> {
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
                padding: EdgeInsets.only(left: 0, top: 30, right: 0),
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xFF02459e), Color(0xFF02459e)]),
                  // image: DecorationImage(
                  //     image: AssetImage("assets/images/virus.png"))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 900,
                      height: 1000,
                      child: Stack(
                        children: <Widget>[
                          Expanded(
                            child: Image(
                                image:
                                    AssetImage("assets/images/COvid_pdf.jpg")),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 22, top: 23),
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
                            padding: const EdgeInsets.only(left: 12, top: 65),
                            child: Container(
                                child: Text(
                              "\n\n\nInformation In PDF Format ",
                              style: TextStyle(
                                  fontFamily: "Hind",
                                  color: Color(0xFFa1f8fa),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => setState(
                      () {
                        _launched = _launchInBrowser(
                            'https://www.who.int/docs/default-source/coronaviruse/situation-reports/20200423-sitrep-94-covid-19.pdf');
                      },
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF004ca9),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 16,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      width: 335,
                      height: 65,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.picture_as_pdf_outlined,
                              color: Color(0xFFa1f8fa), // add custom icons also
                            ),
                            SizedBox(
                              width: 95.0,
                            ),
                            Text(
                              "COVID - 19",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Color(0xFFa1f8fa),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 39.0,
                  ),
                  GestureDetector(
                    onTap: () => setState(
                      () {
                        _launched = _launchInBrowser(
                            'https://www.seruminstitute.com/pdf/covishield_fact_sheet.pdf');
                      },
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF004ca9),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 16,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      width: 335,
                      height: 65,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.picture_as_pdf_outlined,
                              color: Color(0xFFa1f8fa), // add custom icons also
                            ),
                            SizedBox(
                              width: 75.0,
                            ),
                            Text(
                              "Covishield Vaccin",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Color(0xFFa1f8fa),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 36.0,
                  ),
                  GestureDetector(
                    onTap: () => setState(
                      () {
                        _launched = _launchInBrowser(
                            'https://www.bharatbiotech.com/images/covaxin/covaxin-factsheet.pdf');
                      },
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF004ca9),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 16,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      width: 335,
                      height: 65,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.picture_as_pdf_outlined,
                              color: Color(0xFFa1f8fa), // add custom icons also
                            ),
                            SizedBox(
                              width: 100.0,
                            ),
                            Text(
                              "Covaxin",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Color(0xFFa1f8fa),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 39.0,
                  ),
                  GestureDetector(
                    onTap: () => setState(
                      () {
                        _launched = _launchInBrowser(
                            'https://unsdg.un.org/sites/default/files/2020-04/COVID-19-and-Human-Rights.pdf');
                      },
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF004ca9),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 16,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      width: 335,
                      height: 65,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.picture_as_pdf_outlined,
                              color: Color(0xFFa1f8fa), // add custom icons also
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            Text(
                              "COVID-19-and-Human-Rights",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Color(0xFFa1f8fa),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 38.0,
                  ),
                  GestureDetector(
                    onTap: () => setState(
                      () {
                        _launched = _launchInBrowser(
                            'https://ncdc.gov.in/WriteReadData/l892s/18679749311583919448.pdf');
                      },
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF004ca9),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 16,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      width: 335,
                      height: 65,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.picture_as_pdf_outlined,
                              color: Color(0xFFa1f8fa), // add custom icons also
                            ),
                            SizedBox(
                              width: 35.0,
                            ),
                            Text(
                              "Guidelines of COVID-19 case",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Color(0xFFa1f8fa),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

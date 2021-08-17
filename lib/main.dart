import 'dart:ffi';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  //Launch URL
  void _launchURL(String _url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  //Launch Caller
  void launchCaller(final number) async {
    var url = "tel:${number.toString()}";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not place the call';
    }
  }

  //Launch Email
  void launchEmail(String emailId) async {
    var url = "mailto:$emailId?subject= Reach from MI CARD";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not place the call';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/aqeel.png'),
                ),
                Text(
                  'Aqeel Tariq',
                  style: TextStyle(
                    fontFamily: 'Courgette',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      "FLUTTER DEVELOPER",
                      textStyle: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                  totalRepeatCount: 1,
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.white,
                  indent: 20,
                  endIndent: 20,
                ),
                /*
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),*/
                InkWell(
                  onTap: () => launchCaller('+923350054104'),
                  child: Card(
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '+923350044104',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => launchEmail("aqeeel.tariq@gmail.com"),
                  child: Card(
                    shadowColor: Colors.black,
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'aqeeel.tariq@gmail.com',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => _launchURL(
                      "https://www.linkedin.com/in/aqeel-tariq-095b6a20a/"),
                  child: Card(
                    shadowColor: Colors.black,
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: ImageIcon(
                        AssetImage('images/link.png'),
                        color: Colors.teal,
                      ),
                      title: Text(
                        'Aqeel Tariq',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => _launchURL("https://github.com/AqeelTariq1122"),
                  child: Card(
                    shadowColor: Colors.black,
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: ImageIcon(
                        AssetImage('images/git.png'),
                        color: Colors.teal,
                      ),
                      title: Text(
                        'AqeelTariq1122',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => _launchURL(
                      "https://www.fiverr.com/aqeeltariq_1122?up_rollout=true"),
                  child: Card(
                    shadowColor: Colors.black,
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: ImageIcon(
                        AssetImage('images/fiver.png'),
                        color: Colors.teal,
                      ),
                      title: Text(
                        'aqeeltariq_1122',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

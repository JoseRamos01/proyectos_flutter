import 'dart:convert';
import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:proyectos_flutter/avatar.dart';
import 'package:proyectos_flutter/icons/like_icon.dart';
import 'package:proyectos_flutter/icons/linkedin_icon.dart';
import 'package:proyectos_flutter/icons/mail_icon.dart';
import 'package:proyectos_flutter/icons/phone_icon.dart';
import 'package:proyectos_flutter/styles.dart';

import 'personal_info.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _BusinessCard createState() => _BusinessCard();
}

class _BusinessCard extends State<MyApp> {
  int _counter = 0;
  late Future<PersonalInfo> futurePersonalInfo;

  @override
  void initState() {
    super.initState();
    futurePersonalInfo = fetchPersonalInfo();
  }

  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Future<PersonalInfo> fetchPersonalInfo() async {
    final response = await http.get(Uri.parse(
        'https://gist.githubusercontent.com/JoseRamos01/fa1daef476f5aaa32e932c34054458b7/raw/3914fb6a249bebf25b3bbfd689e255874dbb8acf/personal_info.json'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return PersonalInfo.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: const Color.fromRGBO(186, 231, 243, 0.9),
            body: SafeArea(
                child: Center(
                    child: FutureBuilder<PersonalInfo>(
                        future: futurePersonalInfo,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const CircularProgressIndicator();
                          } else {
                            return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Avatar(),
                                  Text(
                                    snapshot.data!.name,
                                    style: Styles.nameStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    snapshot.data!.position,
                                    style: Styles.positionStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 40),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        25, 10, 25, 25),
                                    child: Text(
                                        '$_counter'
                                        ' personas recomiendan este profesional',
                                        style: Styles.recommendStyle),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 10, 0, 0),
                                    child: Row(children: <Widget>[
                                      const MailIcon(),
                                      Text(
                                        snapshot.data!.email,
                                        style: Styles.contactStyle,
                                        textAlign: TextAlign.center,
                                      ),
                                    ]),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 10, 0, 0),
                                    child: Row(children: <Widget>[
                                      const PhoneIcon(),
                                      Text(
                                        snapshot.data!.phoneNumber,
                                        style: Styles.contactStyle,
                                        textAlign: TextAlign.center,
                                      ),
                                    ]),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 10, 0, 0),
                                    child: Row(children: <Widget>[
                                      const LinkedinIcon(),
                                      Text(
                                        snapshot.data!.linkedin,
                                        style: Styles.contactStyle,
                                        textAlign: TextAlign.center,
                                      ),
                                    ]),
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Center(
                                        child: IconButton(
                                          icon: Bounce(
                                            child: const LikeIcon(),
                                            infinite: true,
                                          ),
                                          onPressed: incrementCounter,
                                          iconSize: 50,
                                        ),
                                      ),
                                      const Center(
                                          child: Text(
                                        'Recomendar',
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.black,
                                        ),
                                      ))
                                    ],
                                  )
                                ]);
                          }
                        })))));
  }
}

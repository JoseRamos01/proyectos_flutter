import 'dart:convert';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _BusinessCard createState() => _BusinessCard();
}
class PersonalInfo {

  final String name;
  final String position;
  final String email;
  final String phoneNumber;
  final String linkedin;

  PersonalInfo({
    required this.name,
    required this.position,
    required this.email,
    required this.phoneNumber,
    required this.linkedin,
  });

  factory PersonalInfo.fromJson(Map<String, dynamic> json) {
    return PersonalInfo(
      name: json['name'],
      position: json['position'],
      email: json['email'],
      phoneNumber: json['phonenumber'],
      linkedin: json['linkedin'],
    );
  }

}
class _BusinessCard extends State<MyApp> {
int _counter = 0;
late Future<PersonalInfo> futurePersonalInfo;

@override
void initState() {
  super.initState();
  futurePersonalInfo = fetchPersonalInfo();
}

void incrementCounter(){
  setState(() {
    _counter++;
  });
}


Future<PersonalInfo> fetchPersonalInfo() async {
  final response = await http
      .get(Uri.parse('https://gist.githubusercontent.com/JoseRamos01/fa1daef476f5aaa32e932c34054458b7/raw/3914fb6a249bebf25b3bbfd689e255874dbb8acf/personal_info.json'));

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
    home: Scaffold(
      backgroundColor: Color.fromRGBO(186, 231, 243, 0.9),
      body: SafeArea(
        top: true,
        bottom: true,
        left: true,
        right: true,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/jose.ramos.jpeg'),
              radius: 80,
            ),
            FutureBuilder<PersonalInfo>(
              future: futurePersonalInfo,
              builder: (context, snapshot) {
                if(snapshot.hasData) {
                  return Text(
                    snapshot.data!.name,
                    style: TextStyle(
                      fontSize: 42,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  );
                }
                else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const CircularProgressIndicator();
              }),

            SizedBox(height: 10,),
              FutureBuilder<PersonalInfo>(
                  future: futurePersonalInfo,
                  builder: (context, snapshot) {
                    if(snapshot.hasData) {
                      return Text(snapshot.data!.position, style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                      ),
                        textAlign: TextAlign.center,
                      );
                    }
                    else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    }
                    return const CircularProgressIndicator();
                  }),
          SizedBox(height: 40),
            Container(
              child: Padding(padding: EdgeInsets.fromLTRB(25, 10, 25, 25),
                child: Text('$_counter' + ' personas recomiendan este profesional', style: TextStyle(
                fontSize: 22,
                color: Colors.black,
              )),
            )),
            Padding(padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Row(
                children: <Widget> [
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: ImageIcon(
                    AssetImage('assets/images/mail.png',),
                    size: 23,
                    )),
                  FutureBuilder<PersonalInfo>(
                      future: futurePersonalInfo,
                      builder: (context, snapshot) {
                        if(snapshot.hasData) {
                          return Text(snapshot.data!.email, style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                            textAlign: TextAlign.center,
                          );
                        }
                        else if (snapshot.hasError) {
                          return Text('${snapshot.error}');
                        }
                        return const CircularProgressIndicator();
                      }),
              ]),
            ),
            Padding(padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Row(
                  children: <Widget> [
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: ImageIcon(
                      AssetImage('assets/images/wpp.png'),
                      size: 25,
                    )),
                    FutureBuilder<PersonalInfo>(
                        future: futurePersonalInfo,
                        builder: (context, snapshot) {
                          if(snapshot.hasData) {
                            return Text(snapshot.data!.phoneNumber, style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                              textAlign: TextAlign.center,
                            );
                          }
                          else if (snapshot.hasError) {
                            return Text('${snapshot.error}');
                          }
                          return const CircularProgressIndicator();
                        }),
                  ]),
            ),
            Padding(padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Row(
                  children: <Widget> [
                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: ImageIcon(
                      AssetImage('assets/images/linkedin.png'),
                      size: 26,
                    )
                    ),
                    FutureBuilder<PersonalInfo>(
                        future: futurePersonalInfo,
                        builder: (context, snapshot) {
                          if(snapshot.hasData) {
                            return Text(snapshot.data!.linkedin, style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                              textAlign: TextAlign.center,
                            );
                          }
                          else if (snapshot.hasError) {
                            return Text('${snapshot.error}');
                          }
                          return const CircularProgressIndicator();
                        }),
                  ]),
            ),
              SizedBox(height: 40,),
              Column(
                children: <Widget> [
                  Center(
                    child: IconButton(
                      icon: ImageIcon(AssetImage('assets/images/like.png')
                    ),
                      onPressed: () { incrementCounter(); },
                      iconSize: 50,
                    ),
                  ),
                  Center(
                    child: Text('Recomendar', style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),)
                  )
                ],
              )
          ])
      ))));
}
}
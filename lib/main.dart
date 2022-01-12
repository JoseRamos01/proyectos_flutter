import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _BusinessCard createState() => _BusinessCard();
}
class _BusinessCard extends State<MyApp> {
int _counter = 0;

void incrementCounter(){
  setState(() {
    _counter++;
  });
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
            Text(
              'Jose Ramos',
              style: TextStyle(
                fontSize: 42,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10,),
            Text('Mobile Developer', style: TextStyle(
              fontSize: 26,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
            ),
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
                  Text('jmramoslemes@gmail.com', style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                    textAlign: TextAlign.center,
                  ),
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
                    Text('095880709', style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                      textAlign: TextAlign.center,
                    ),
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
                    Text('linkedin.com/jose.ramos', style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                      textAlign: TextAlign.center,
                    ),
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
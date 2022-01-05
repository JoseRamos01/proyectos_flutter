import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  messagePrint() {
  print('Function Called');
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
                fontSize: 40,
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
          SizedBox(height: 150),
            Padding(padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Row(
                children: <Widget> [
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: ImageIcon(
                    AssetImage('assets/images/mail.png'),
                    )),
                  Text('jmramoslemes@gmail.com', style: TextStyle(
                    fontSize: 24,
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
                    )),
                    Text('095880709', style: TextStyle(
                      fontSize: 24,
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
                    )
                    ),
                    Text('linkedin.com/jose.ramos', style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                      textAlign: TextAlign.center,
                    ),
                  ]),
            ),
          ])
      ))));
}
}
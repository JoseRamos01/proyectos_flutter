import 'package:flutter/material.dart';

class PhoneIcon extends StatelessWidget {
  const PhoneIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: ImageIcon(
          AssetImage('assets/images/wpp.png'),
          size: 25,
        ));
  }
}

import 'package:flutter/material.dart';

class LinkedinIcon extends StatelessWidget {
  const LinkedinIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: ImageIcon(
          AssetImage('assets/images/linkedin.png'),
          size: 26,
        ));
  }
}

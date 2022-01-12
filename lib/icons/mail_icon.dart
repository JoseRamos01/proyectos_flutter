import 'package:flutter/material.dart';

class MailIcon extends StatelessWidget {
  const MailIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding:
        EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: ImageIcon(
          AssetImage(
            'assets/images/mail.png',
          ),
          size: 23,
        ));
  }

}
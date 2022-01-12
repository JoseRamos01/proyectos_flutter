import 'package:flutter/material.dart';

class LikeIcon extends StatelessWidget {
  const LikeIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ImageIcon(
      AssetImage('assets/images/like.png'),
    );
  }
}

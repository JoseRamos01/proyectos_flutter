import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String? pictureUrl;

  const Avatar({Key? key, required this.pictureUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (pictureUrl != null) {
      return CircleAvatar(
        backgroundImage: NetworkImage(pictureUrl!),
        radius: 80,
      );
    } else {
      return CircleAvatar(
        backgroundImage: NetworkImage(pictureUrl!),
        radius: 80,
      );
    }
  }
}

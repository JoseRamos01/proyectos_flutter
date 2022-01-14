import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:proyectos_flutter/icons/like_icon.dart';
import 'package:proyectos_flutter/styles.dart';

class LikesCounter extends StatefulWidget {
  const LikesCounter({Key? key}) : super(key: key);

  @override
  _Recommended createState() => _Recommended();
}

class _Recommended extends State<LikesCounter> {
  int _likesCounter = 0;

  void incrementLikesCounter() {
    setState(() {
      _likesCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 10, 25, 25),
          child: Text(
              '$_likesCounter'
              ' likes',
              style: Styles.recommendStyle),
        ),
        const SizedBox(
          height: 5,
        ),
        Center(
          child: IconButton(
            icon: Bounce(
              child: const LikeIcon(),
              infinite: true,
            ),
            onPressed: incrementLikesCounter,
            iconSize: 50,
          ),
        ),
        const Center(
            child: Text(
          'Like',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ))
      ],
    ));
  }
}

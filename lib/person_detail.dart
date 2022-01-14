import 'package:flutter/material.dart';
import 'package:proyectos_flutter/avatar.dart';
import 'package:proyectos_flutter/person_model.dart';
import 'package:proyectos_flutter/styles.dart';
import 'contact_info.dart';
import 'likes_counter.dart';

class PersonDetail extends StatelessWidget {
  const PersonDetail({Key? key, required this.personModel}) : super(key: key);
  final PersonModel personModel;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white70,
            appBar: AppBar(
              title: const Text('Contact Detail'),
              backgroundColor: Colors.black26,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: SafeArea(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                  Avatar(pictureUrl: personModel.picture.large),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    personModel.name,
                    style: Styles.nameStyle,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Contact(
                      email: personModel.email,
                      phoneNumber: personModel.phoneNumber),
                  const SizedBox(
                    height: 70,
                  ),
                  const LikesCounter(),
                ])))));
  }
}

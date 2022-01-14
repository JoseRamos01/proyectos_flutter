import 'package:flutter/material.dart';
import 'package:proyectos_flutter/mocked_data.dart';
import 'package:proyectos_flutter/person_model.dart';

import 'person_row.dart';

final contactList =
    mockedContacts.map((contact) => PersonModel.fromJson(contact)).toList();

class HomePageContactList extends StatelessWidget {
  const HomePageContactList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Contact list'),
          ),
          body: SafeArea(
              child: ListView.builder(
            itemCount: mockedContacts.length,
            itemBuilder: (BuildContext context, int index) {
              return PersonRow(personModel: contactList[index]);
            },
          ))),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:proyectos_flutter/contact_list_home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomePageContactList();
  }
}

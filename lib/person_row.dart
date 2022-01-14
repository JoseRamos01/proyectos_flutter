import 'package:flutter/material.dart';
import 'package:proyectos_flutter/person_detail.dart';
import 'package:proyectos_flutter/person_model.dart';
import 'package:proyectos_flutter/styles.dart';

class PersonRow extends StatelessWidget {
  final PersonModel personModel;

  const PersonRow({required this.personModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PersonDetail(personModel: personModel)),
          );
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(personModel.picture.thumbnail),
                radius: 25,
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                personModel.name,
                style: Styles.rowStyle,
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 26,
              ),
              const SizedBox(
                height: 75,
              ),
            ],
          ),
        ));
  }
}

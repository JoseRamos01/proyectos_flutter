import 'package:proyectos_flutter/picture_model.dart';

class PersonModel {
  PersonModel({
    required this.name,
    required this.picture,
    required this.email,
    required this.phoneNumber,
    this.linkedin,
  });

  final String name;
  final PictureModel picture;
  final String email;
  final String phoneNumber;
  final String? linkedin;

  factory PersonModel.fromJson(Map<String, dynamic> json) {
    return PersonModel(
      name: json['name'],
      picture: PictureModel.fromJson(json['picture']),
      email: json['email'],
      phoneNumber: json['cell'],
      linkedin: json['linkedin'],
    );
  }
}

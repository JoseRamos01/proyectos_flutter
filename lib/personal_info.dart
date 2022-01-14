class PersonalInfo {
  PersonalInfo({
    required this.name,
    required this.position,
    required this.email,
    required this.phoneNumber,
    required this.linkedin,
  });

  final String name;
  final String position;
  final String email;
  final String phoneNumber;
  final String linkedin;

  factory PersonalInfo.fromJson(Map<String, dynamic> json) {
    return PersonalInfo(
      name: json['name'],
      position: json['position'],
      email: json['email'],
      phoneNumber: json['phonenumber'],
      linkedin: json['linkedin'],
    );
  }
}

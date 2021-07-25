import 'dart:convert';

List<PersonModels> decodePerson(String str) => List<PersonModels>.from(
    json.decode(str).map((x) => PersonModels.fromJson(x)));

class PersonModels {
  PersonModels({
    required this.name,
    required this.age,
    required this.height,
    required this.gender,
  });

  String name;
  String age;
  String height;
  String gender;

  factory PersonModels.fromJson(Map<String, dynamic> json) => PersonModels(
        name: json["name"],
        age: json["age"],
        height: json["height"],
        gender: json["gender"],
      );
}



import 'package:petpulse/Model/breed.dart';
import 'package:petpulse/Model/user.dart';

class Pet{
  int? id;
  String name;
  String dateOfBirth;
  User user;
  Breed breed;

  Pet(this.id, this.name, this.dateOfBirth, this.user, this.breed);

  //Parse the data from JSON format
  Pet.fromJson(Map<String, dynamic> json):
        id = int.parse(json['id']),
        name = json['name'] as String,
        dateOfBirth = json['dateOfBirth'] as String,
        user = User.fromJson(json['user'] as Map<String,dynamic>),
        breed = Breed.fromJson(json['breed'] as Map<String, dynamic>);

  //Parse the data to JSON
  Map <String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'dateOfBirth': dateOfBirth,
    'user': user.toJson(),
    'breed': breed.toJson(),
  };
}
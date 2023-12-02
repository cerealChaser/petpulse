import 'package:petpulse/Model/pet.dart';

class Vaccination{
  int? id;
  String name;
  String dateAdministered;
  String expiryDate;
  Pet pet;

  //Constructor
  Vaccination(this.id, this.name, this.dateAdministered,
      this.expiryDate, this.pet);

  //Parse data from JSON
  Vaccination.fromJson(Map<String,dynamic> json):
      id = int.parse(json['id']),
        name = json['name'] as String,
        dateAdministered = json['dateAdministered'] as String,
        expiryDate = json['expiryDate'] as String,
        pet = Pet.fromJson(json['pet'] as  Map<String, dynamic>);

  //Parse data to JSON
  Map <String,dynamic> toJson () =>{
    'id' : id,
    'name' : name,
    'dateAdministered' : dateAdministered,
    'expiryDate' : expiryDate,
    'pet' : pet.toJson(),
  };


}
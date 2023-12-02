import 'package:petpulse/Model/pet.dart';

class Medication{
  int? id;
  String name;
  double dosage;
  double frequency;
  String startDate;
  String endDate;
  Pet pet;

  //Constructor
  Medication (this.id, this.name, this.dosage, this.frequency,
  this.startDate,this.endDate, this.pet);

  //Parse data from JSON
  Medication.fromJson (Map<String, dynamic> json):
        id = int.parse(json['id']),
        name = json['name'] as String,
        dosage = json['dosage'] as double,
        frequency = json['frequency'] as double,
        startDate = json['startDate'] as String,
        endDate = json['endDate'] as String,
        pet = Pet.fromJson(json['pet'] as  Map<String, dynamic>);

  //Parse data to JSON
  Map <String,dynamic> toJson () =>{
    'id' : id,
    'name' : name,
    'dosage' : dosage,
    'frequency' : frequency,
    'startDate' : startDate,
    'endDate' : endDate,
    'pet': pet.toJson(),
  };
}
import 'package:petpulse/Model/pet.dart';
import 'package:petpulse/Model/symptom.dart';

class MedicalRecord{
  int? id;
  String title;
  String date;
  String description;
  Symptom symptom;
  Pet pet;

  MedicalRecord(this.id, this.title, this.date, this.description,
      this.symptom, this.pet);

  //Parse data from JSON format
  MedicalRecord.fromJson(Map<String, dynamic> json)
  : id = int.parse(json['id']),
  title = json['title'] as String,
  date = json['date'] as String,
  description = json['description'] as String,
  symptom = Symptom.fromJson(json['symptom'] as Map<String,dynamic>),
  pet = Pet.fromJson(json['pet'] as Map<String,dynamic>);

  //Parse data to JSON format
  Map<String,dynamic> toJson() =>{
    'id' : id,
    'title' : title,
    'date' : date,
    'description' : description,
    'symptom' : symptom.toJson(),
    'pet' : pet.toJson(),
  };
}
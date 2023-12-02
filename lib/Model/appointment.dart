import 'package:petpulse/Model/pet.dart';
import 'package:petpulse/Model/veterinaryClinic.dart';

class Appointment{
  int? id;
  String type;
  String date;
  String notes;
  Pet pet;
  VeterinaryClinic clinic;

  Appointment (this.id, this.type, this.date, this.notes, this.pet, this.clinic);

  //Parse data from json
  Appointment.fromJson (Map<String, dynamic> json):
    id = int.parse(json['id']),
    type = json['type'] as String,
    date = json['date'] as String,
    notes = json['notes'] as String,
    pet = Pet.fromJson(json['pet'] as  Map<String, dynamic>),
    clinic = VeterinaryClinic.fromJson(json['clinic'] as  Map<String, dynamic>);

  //Parse data to JSON
  Map <String,dynamic> toJson () =>{
    'id' : id,
    'type' : type,
    'date' : date,
    'notes' : notes,
    'pet' : pet.toJson(),
    'clinic': clinic.toJson(),
  };
}
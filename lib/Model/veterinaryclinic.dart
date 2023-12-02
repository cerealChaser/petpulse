class VeterinaryClinic{
  int? id;
  String name;
  String location;
  String contactNumber;

  //Constructor
  VeterinaryClinic(this.id, this.name, this.location, this.contactNumber);

  //Parse the data from Json to java variables
  VeterinaryClinic.fromJson(Map<String, dynamic> json):
        id = int.parse(json['id']),
        name = json['name'] as String,
        location = json['location'] as String,
        contactNumber = json['contactNumber'] as String;

  // Parse the data to be in JSON form
  Map <String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'location': location,
    'contactNumber': contactNumber
  };
}
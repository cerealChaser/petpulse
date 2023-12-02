class Symptom{
  int? id;
  String name;
  String description;

  Symptom(this.id, this.name, this.description);

  //Parse data from JSON
  Symptom.fromJson (Map<String, dynamic> json):
        id = int.parse(json['id']),
        name = json['name'] as String,
        description = json['description'] as String;

  //Parse data to JSON
  Map <String,dynamic> toJson () =>{
    'id' : id,
    'name' : name,
    'description' : description,
  };
}
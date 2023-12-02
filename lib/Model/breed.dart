class Breed{
  int? id;
  String name;
  String description;

  //Constructor
  Breed(this.id, this.name, this.description);

  //Parse the data from JSON to java variables
  Breed.fromJson(Map<String,dynamic> json):
    id = int.parse(json['id']),
    name = json['name'] as String,
    description = json['description'] as String;

  //Parse the data to JSON form
  Map<String,dynamic> toJson() =>{
    'id' : id,
    'name' : name,
    'description' : description
  };
}
class Sickness{
  int? id;
  String name;
  String description;
  String recommendedAction;

  Sickness(this.id, this.name, this.description, this.recommendedAction);

  //Parse data from JSON
  Sickness.fromJson (Map<String, dynamic> json):
        id = int.parse(json['id']),
        name = json['name'] as String,
        description = json['description'] as String,
        recommendedAction = json['recommendedAction'] as String;

  //Parse data to JSON
  Map <String,dynamic> toJson () =>{
    'id' : id,
    'name' : name,
    'description' : description,
    'recommendedAction' : recommendedAction
  };
}
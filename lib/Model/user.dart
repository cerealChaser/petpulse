class User{
  int? id;
  String username;
  String fName;
  String lName;
  String email;
  String phoneNumber;
  String password;

  //Constructor
  User (this.id, this.username, this.fName, this.lName, this.email,
      this.phoneNumber, this.password);

  //Parse the data from Json to java variables
  User.fromJson(Map<String, dynamic> json):
        id = int.parse(json['id']),
        username = json['username'] as String,
        fName = json['fName'] as String,
        lName = json['lName'] as String,
        email = json['email'] as String,
        phoneNumber = json['phoneNumber'] as String,
        password = json['password'] as String;

  // Parse the data to be in JSON form
  Map <String, dynamic> toJson() => {
    'id': id,
    'username': username,
    'fName': fName,
    'lName': lName,
    'email': email,
    'phoneNumber': phoneNumber,
    'password': password
  };


}
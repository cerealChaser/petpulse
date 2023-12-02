import 'package:petpulse/Model/user.dart';

class CommunityPost{
  int? id;
  String title;
  String content;
  String date;
  User user;

  CommunityPost(this.id, this.title, this.content, this.date, this.user);

  //Parse data from JSON
  CommunityPost.fromJson (Map<String, dynamic> json):
        id = int.parse(json['id']),
        title = json['title'] as String,
        content = json['content'] as String,
        date = json['date'] as String,
        user = User.fromJson(json['user'] as  Map<String, dynamic>);

  //Parse data to JSON
  Map <String,dynamic> toJson () =>{
    'id' : id,
    'title' : title,
    'content' : content,
    'date' : date,
    'user': user.toJson(),
  };
}
import 'package:petpulse/Model/communitypost.dart';
import 'package:petpulse/Model/user.dart';

class Comment{
  int? id;
  String content;
  String date;
  User user;
  CommunityPost post;

  Comment(this.id, this.content, this.date, this.user, this.post);

  //Parse data from JSON
  Comment.fromJson (Map<String, dynamic> json):
        id = int.parse(json['id']),
        content = json['content'] as String,
        date = json['date'] as String,
        user = User.fromJson(json['user'] as  Map<String, dynamic>),
        post = CommunityPost.fromJson(json['post'] as  Map<String, dynamic>);

  //Parse data to JSON
  Map <String,dynamic> toJson () =>{
    'id' : id,
    'content' : content,
    'date' : date,
    'user': user.toJson(),
    'post': post.toJson()
  };
}
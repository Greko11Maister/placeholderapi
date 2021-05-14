




import 'package:equatable/equatable.dart';

class PostsModel extends Equatable{
  int userId ;
  int id ;
  String title;
  String body;

  PostsModel ({
    this.userId,
    this.id,
    this.title,
    this.body
});

  @override
  List<Object> get props => [
    userId,
    id,
    title,
    body
  ];

  factory PostsModel.fromJson(Map<String, dynamic> json ){
    return PostsModel(
      userId: json["userId"],
      id:  json["id"],
      title: json["title"],
      body: json["body"],
    );
  }

}
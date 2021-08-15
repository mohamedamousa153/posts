

import 'package:dio/dio.dart';
import 'package:iti_json/models/posts_model.dart';

class PostsScervice{
  String baseUrl = "https://jsonplaceholder.typicode.com/";
  String posts = "posts";
  Future<List<MessageBody>> getPosts() async {
    List<MessageBody> postsList  = [];
    Dio dio = new Dio();
    Response res = await dio.get("$baseUrl"+"$posts");
    var data = res.data;
    data.forEach((postsItem) {
      MessageBody posts = MessageBody.fromJson(postsItem);
      postsList.add(posts);
    });
    return postsList;

  }
}


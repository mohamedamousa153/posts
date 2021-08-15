import 'package:flutter/material.dart';
import 'package:iti_json/models/posts_model.dart';
import 'package:iti_json/servises/posts.dart';
import 'package:iti_json/widget/myCard.dart';


class dataScreen extends StatefulWidget {


  @override
  _dataScreenState createState() => _dataScreenState();
}

class _dataScreenState extends State<dataScreen> {
  bool loading = true;
  List<MessageBody> posts = [];
  getUserList() async {
    posts = await PostsScervice().getPosts();
    loading = false;
    setState(() {});
  }
  @override
  void initState() {
    super.initState();
    getUserList();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts Screen"),
      ),
      body: loading?Center(child: CircularProgressIndicator())
      :ListView.builder(
     itemCount: posts.length,
          itemBuilder:(BuildContext context, int index){
       return Padding(padding: const EdgeInsets.all(8.0),
         child: myCard(content: "${posts[index].title}"),
       );
          }

      ),
    );
  }
}


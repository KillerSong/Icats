import 'package:banthoeng/posts/infomation_profile.dart';
import 'package:banthoeng/service/profilepost1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:like_button/like_button.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 194, 240, 255),
      body: Content(),
    );
  }
}

class Content extends StatelessWidget {
  final List<Postinfomation> postdata = List.generate(
      posts.length,
      (index) =>
          Postinfomation(
            posts[index].id, 
            posts[index].imageprofile, 
            posts[index].username, 
            posts[index].detail, 
            posts[index].time, 
            posts[index].imagepost
            ));

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (contex,idex){
          return Container(
            child: PostProfile1(itemIndex: idex, post: posts[idex],),
          );
        },
      )
    );
  }
}

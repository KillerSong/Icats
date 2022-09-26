import 'package:banthoeng/util/button.dart';
import 'package:banthoeng/util/post_template.dart';
import 'package:flutter/material.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'Ramzi',
      videoDescription: 'AOT ',
      userPost: Container(
        color: Colors.deepPurple[100],
      ),
    );
  }
}

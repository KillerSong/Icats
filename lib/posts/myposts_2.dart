import 'package:flutter/material.dart';

import '../util/post_template.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'The Flash',
      videoDescription: 'The Fast ',
      userPost: Container(
        color: Colors.red[200],
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../util/post_template.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'Bai Fern',
      videoDescription: 'Weed is so Good ',
      userPost: Container(
        color: Colors.blue[200],
      ),
    );
  }
}
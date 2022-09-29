import 'package:flutter/material.dart';

import '../posts/myposts_1.dart';
import '../posts/myposts_2.dart';
import '../posts/myposts_3.dart';


class UserLikePage extends StatelessWidget {
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
          MyPost2(),
          MyPost3(),
        ],
      ),
    );

  }
}
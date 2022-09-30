import 'package:flutter/material.dart';

import '../posts/feed_video.dart';



class UserLikePage extends StatelessWidget {
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          LikePage(title: 'Hi',)
        ],
      ),
    );

  }
}
import 'package:banthoeng/pages/model/post_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:like_button/like_button.dart';

import '../posts/data.dart';

class PostProfile1 extends StatelessWidget {
  const PostProfile1({
    Key? key,
    required this.itemIndex,
    required this.post,
  }) : super(key: key);

  final int itemIndex;
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _Header(
                  post: post,
                  itemIndex: itemIndex,
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  post.detail,
                  style: TextStyle(color: Colors.black, fontSize: 12.0),
                ),
                post.imageUrl != ''
                    ? const SizedBox.shrink()
                    : const SizedBox(
                        height: 6.0,
                      ),
              ],
            ),
          ),
          post.imageUrl != ''
              ? CachedNetworkImage(imageUrl: post.imageUrl)
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
    required this.itemIndex,
    required this.post,
  }) : super(key: key);

  final int itemIndex;
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(post.user.imageUrl),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  post.user.name,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
              Row(
                children: [
                  Text(
                    ' • ${post.time} ',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                    ),
                  ),
                  Icon(
                    Icons.public,
                    color: Colors.grey[600],
                    size: 12.0,
                  )
                ],
              )
            ],
          ),
        ),
        IconButton(
          icon: const Icon(
            Icons.more_horiz,
            color: Colors.black,
          ),
          onPressed: () => print('More'),
        ),
      ],
    );
  }
}

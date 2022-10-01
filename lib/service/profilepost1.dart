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
    // return SingleChildScrollView(
    //   child: Container(
    //     width: 500,
    //     height: 120,
    //     decoration: BoxDecoration(
    //       color: Colors.white,
    //     ),
    //     child: SingleChildScrollView(
    //       child: Padding(
    //         padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 30),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             SizedBox(
    //               height: 10,
    //             ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 CircleAvatar(
    //                   radius: 17,
    //                   backgroundImage: NetworkImage(post.imageprofile),
    //                   // 'https://steamuserimages-a.akamaihd.net/ugc/1692772971374892784/C764A005644E2325F4563927CF997158A4FADB96/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false'),
    //                 ),
    //                 Row(
    //                   children: [
    //                     Padding(
    //                       padding: const EdgeInsets.only(bottom: 10),
    //                       child: Column(
    //                         children: [
    //                           Text(
    //                             post.username,
    //                             // "John Doe",
    //                             style: TextStyle(
    //                                 fontSize: 15,
    //                                 fontWeight: FontWeight.w700,
    //                                 color: Colors.black),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                     Padding(
    //                       padding: const EdgeInsets.only(bottom: 5),
    //                       child: Column(
    //                         children: [
    //                           Text(
    //                             post.time,
    //                             // "  ∙  2d",
    //                             style: TextStyle(
    //                               fontSize: 10,
    //                               fontWeight: FontWeight.w100,
    //                               color: Colors.black,
    //                             ),
    //                           )
    //                         ],
    //                       ),
    //                     ),
    //                     SizedBox(
    //                       width: 220,
    //                     ),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //             SizedBox(
    //               height: 5,
    //             ),
    //             Text(
    //               post.detail,
    //               // "My Cat don't moved for 3 days. What's wrong with My Cat ?",
    //               style: TextStyle(color: Colors.black, fontSize: 12),
    //             ),
    //             Column(
    //               children: [
    //                 Image.asset(
    //                   post.imagepost,
    //                   fit: BoxFit.cover,
    //                 )
    //               ],
    //             ),
    //             Row(children: [
    //               Column(
    //                 children: [
    //                   SingleChildScrollView(
    //                     child: Padding(
    //                       padding: const EdgeInsets.only(top: 1),
    //                       child: LikeButton(
    //                         size: 30,
    //                         animationDuration: Duration(milliseconds: 1000),
    //                         likeCount: 0,
    //                         countPostion: CountPostion.right,
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               SizedBox(
    //                 width: 5,
    //               ),
    //               Column(
    //                 children: [
    //                   SingleChildScrollView(
    //                     child: Padding(
    //                       padding: const EdgeInsets.only(top: 1),
    //                       child: IconButton(
    //                         onPressed: () {},
    //                         icon: Icon(
    //                           Icons.message,
    //                           color: Colors.grey,
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               SizedBox(
    //                 width: 5,
    //               ),
    //               Column(
    //                 children: [
    //                   SingleChildScrollView(
    //                     child: Padding(
    //                       padding: const EdgeInsets.only(top: 1),
    //                       child: IconButton(
    //                         onPressed: () {},
    //                         icon: Icon(
    //                           Icons.send,
    //                           color: Colors.grey,
    //                         ),
    //                       ),
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             ]),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
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

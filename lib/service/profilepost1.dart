import 'package:banthoeng/pages/model/post_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: CachedNetworkImage(imageUrl: post.imageUrl),
                )
              : const SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: PostStats(
              post: post,
            ),
          ),
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

class PostStats extends StatelessWidget {
  const PostStats({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blue,
                // shape: BoxShape,
              ),
              child: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
                size: 15.0,
              ),
            ),
            const SizedBox(
              width: 4.0,
            ),
            Expanded(
              child: Text(
                "${post.likes}",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                ),
              ),
            ),
            Text(
              "${post.comments} Comments",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 15,
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Text(
              "${post.shares} Shares",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 15,
              ),
            ),
          ],
        ),
        const Divider(),
        Row(
          children: [
            PostButtom(
              icon: Icon(
                MdiIcons.thumbUpOutline,
                color: Colors.grey,
                size: 20.0,
              ),
              label: "Like",
              onTap: () => print("Like"),
            ),
            PostButtom(
              icon: Icon(
                MdiIcons.commentOutline,
                color: Colors.grey,
                size: 20.0,
              ),
              label: "Comment",
              onTap: () => print("Comment"),
            ),
            PostButtom(
              icon: Icon(
                MdiIcons.shareOutline,
                color: Colors.grey,
                size: 25.0,
              ),
              label: "Share",
              onTap: () => print("Share"),
            )
          ],
        ),
      ],
    );
  }
}

class PostButtom extends StatelessWidget {
  const PostButtom({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final Icon icon;
  final String label;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            height: 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                const SizedBox(width: 4.0),
                Text(label),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:like_button/like_button.dart';

class PostProfile1 extends StatelessWidget {
  const PostProfile1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 17,
                    backgroundImage: NetworkImage(
                        'https://steamuserimages-a.akamaihd.net/ugc/1692772971374892784/C764A005644E2325F4563927CF997158A4FADB96/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false'),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: [
                            Text(
                              "John Doe",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Column(
                          children: [
                            Text(
                              "  ∙  2d",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w100,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 220,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "My Cat don't moved for 3 days. What's wrong with My Cat ?",
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              Row(children: [
                Column(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: LikeButton(
                          size: 30,
                          animationDuration: Duration(milliseconds: 1000),
                          likeCount: 0,
                          countPostion: CountPostion.right,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(top:1),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.message,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.send,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

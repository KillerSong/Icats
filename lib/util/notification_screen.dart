import 'package:banthoeng/posts/data.dart';
import 'package:banthoeng/posts/infomaition_noti.dart';
import 'package:banthoeng/service/notification_post.dart';
import 'package:banthoeng/service/profilepost1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:like_button/like_button.dart';

class Noti extends StatefulWidget {
  const Noti({super.key});

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 194, 240, 255),
      body: Content(),
    );
  }
}

class Content extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: notis.length,
        itemBuilder: (contex,idex){
          return Container(
            child: Notifications(itemIndex: idex, noti: notis[idex],),
          );
        },
      )
    );
  }
}

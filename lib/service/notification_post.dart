import 'package:flutter/material.dart';
import '../posts/infomaition_noti.dart';

class Notifications extends StatelessWidget {
  const Notifications({
    Key? key,
    required this.itemIndex,
    required this.noti,
  }) : super(key: key);

  final int itemIndex;
  final Noti noti;

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
                  noti: noti,
                  itemIndex: itemIndex,
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  noti.detail,
                  style: TextStyle(color: Colors.black, fontSize: 12.0),
                ),
                _Header(
                  noti: noti,
                  itemIndex: itemIndex,
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  noti.detail,
                  style: TextStyle(color: Colors.black, fontSize: 12.0),
                ),
              ],
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
    required this.noti,
  }) : super(key: key);

  final int itemIndex;
  final Noti noti;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(noti.imageprofile),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  noti.username,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

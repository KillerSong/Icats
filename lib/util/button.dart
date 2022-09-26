import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final icon;

  MyButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        SizedBox(height: 30,),
      ],
    );
  }
}
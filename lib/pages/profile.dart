import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: Container(

          child: AppBar(
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 194, 240, 255),
            centerTitle: false,
            title: Text(
              "john.doe",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            actions: [
              IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.settings, color:Colors.black,)),
              ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 194, 240, 255),
    );
  }
}

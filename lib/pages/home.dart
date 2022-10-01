import 'package:banthoeng/pages/model/model.dart';
import 'package:banthoeng/pages/model/post_model.dart';
import 'package:flutter/material.dart';

import '../posts/myposts_1.dart';
import '../posts/myposts_2.dart';
import '../posts/myposts_3.dart';

class UserHomePage extends StatefulWidget {
  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  static List<Search> main_post_list = [
    Search(
      person: 'wai',
      postdetail: 'love Love',
      type: 'cat',
    ),
    Search(
      person: 'flash',
      postdetail: 'love Love You you',
      type: 'food',
    ),
  ];

  List<Search> display_list = List.from(main_post_list);

  void updateList(String value) {
    setState(() {
      display_list = main_post_list
          .where((element) =>
              element.person!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  // final _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff0302360),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.white),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: display_list.length == 0
                  ? Center(
                      child: Text("Now result found",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          )))
                  : ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: (context, index) => ListTile(
                        contentPadding: EdgeInsets.all(8.0),
                        title: Text(
                          display_list[index].person!,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          '${display_list[index].postdetail!}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

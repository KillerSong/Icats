import 'package:banthoeng/util/Post_screen.dart';
import 'package:flutter/material.dart';
import '../util/igtv_screen.dart';
import '../util/profile_header_widget.dart';
import '../util/reels_screen.dart';

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
                  icon: Icon(
                    Icons.settings,
                    color: Colors.black,
                  )),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 194, 240, 255),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    profileHeaderWidget(context),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: [
              Material(
                color: Color.fromARGB(255, 194, 240, 255),
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicatorWeight: 1,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(
                        icon: Icon(
                      Icons.grid_view,
                      color: Colors.black,
                    )),
                    Tab(
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  Gallery(),
                  Post(),
                  Reels(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

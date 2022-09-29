import 'package:banthoeng/pages/chat.dart';
import 'package:banthoeng/pages/home.dart';
import 'package:banthoeng/pages/like.dart';
import 'package:banthoeng/pages/profile.dart';
import 'package:banthoeng/pages/ring.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// Navbar
class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    UserHomePage(),
    UserChatPage(),
    UserLikePage(),
    UserRingPage(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: GNav(
              backgroundColor: Colors.white,
              color: Colors.black,
              activeColor: Colors.white,
              tabBackgroundColor: Color(0xFF4000F4),
              gap: 8,
              selectedIndex: _selectedIndex,
              onTabChange: _navigateBottomBar,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.message,
                  text: "Chat",
                ),
                GButton(
                  icon: Icons.favorite,
                  text: "Like",
                ),
                GButton(
                  icon: Icons.notifications,
                  text: "Notification",
                ),
                GButton(
                  icon: Icons.person,
                  text: "Profile",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

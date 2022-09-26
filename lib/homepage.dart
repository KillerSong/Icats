import 'package:banthoeng/pages/chat.dart';
import 'package:banthoeng/pages/home.dart';
import 'package:banthoeng/pages/like.dart';
import 'package:banthoeng/pages/profile.dart';
import 'package:banthoeng/pages/ring.dart';
import 'package:flutter/material.dart';

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
    UserLikePage(),
    UserChatPage(),
    UserRingPage(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              activeIcon: Container(
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
              activeIcon: Container(
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Like',
              activeIcon: Container(
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              label: 'Ring',
              activeIcon: Container(
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Profile',
              activeIcon: Container(
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle ),
              )),
        ],
        backgroundColor: Colors.white,
      ),
    );
  }
}




import 'package:flutter/material.dart';
import 'package:remake_tumblr/menu/homepage.dart';
import 'package:remake_tumblr/menu/notification.dart';
import 'package:remake_tumblr/menu/profile.dart';
import 'package:remake_tumblr/menu/search.dart';
import 'package:remake_tumblr/theme/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  final pages = [
    HomePage(),
    SearchPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: themeMainColor,
        child: pages[index],
      ),
      bottomNavigationBar: Container(
        height: 57,
        width: MediaQuery.of(context).size.width,
        color: themeMainColor,
        child: BottomNavigationBar(
          onTap: (int index) => setState(() => this.index = index),
          backgroundColor: themeMainColor,
          currentIndex: index,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: iconBottomColor,
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: "home",
              icon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
              label: "home",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "home",
              icon: Icon(Icons.emoji_emotions),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person),
            )
          ],
        ),
      ),
    );
  }
}

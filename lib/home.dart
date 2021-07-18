import 'package:flutter/material.dart';
import 'package:remake_tumblr/menu/homepage.dart';
import 'package:remake_tumblr/menu/notification.dart';
import 'package:remake_tumblr/menu/profile.dart';
import 'package:remake_tumblr/menu/search.dart';
import 'package:remake_tumblr/theme/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: themeMainColor,
        child: ProfilePage(),
      ),
      bottomNavigationBar: Container(
        height: 57,
        width: MediaQuery.of(context).size.width,
        color: themeMainColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Icon(
                Icons.home,
                color: iconBottomColor,
                size: 30,
              ),
            ),
            Container(
              child: Icon(
                Icons.search,
                color: iconBottomColor,
                size: 30,
              ),
            ),
            Container(
              child: Icon(
                Icons.insert_emoticon,
                color: iconBottomColor,
                size: 30,
              ),
            ),
            Container(
              child: Icon(
                Icons.person,
                color: iconBottomColor,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

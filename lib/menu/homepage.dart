import 'package:flutter/material.dart';
import 'package:remake_tumblr/theme/theme.dart';
import 'package:remake_tumblr/widget/post.dart';
import 'package:remake_tumblr/widget/tag_category.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          backgroundColor: themeMainColor,
          actions: [
            Container(
              child: Icon(
                Icons.comment,
                size: 30,
                color: iconBottomColor,
              ),
              margin: EdgeInsets.symmetric(horizontal: 15),
            )
          ],
          title: Center(
            child: Text(
              "tumblr",
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
          ),
          leading: Container(
            child: Icon(
              Icons.camera_alt,
              size: 30,
              color: iconBottomColor,
            ),
            margin: EdgeInsets.symmetric(
              horizontal: 5,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: themeMainColor,
            child: ListView(
              children: [
                Column(
                  children: [
                    BuildPost(
                      writer: "nurunala",
                      notes: "42",
                      urlProfilePict: "nurunala.jpg",
                      postText:
                          "Serbasalah\nDalam serbasalah...\nKita lelah tapi tak menyerah.\nPatah tapi tak sudi kalah\n\nDalam ketidakpastian...\n\nKita terus melangkah walau terseok\nTetap berharap meski berkali terluka dan kecewa.\n\n\n22/6/2021",
                    ),
                    BuildPost(
                      writer: "kuriawangunadi",
                      notes: "25",
                      urlProfilePict: "kurniawangunadi.jpg",
                      postText:
                          "Halo Dunia.\nApa kabar semuanya.\nSemoga baik-baik saja.",
                    ),
                    BuildTagsCategory(),
                    BuildPost(
                      writer: "emesgeweerte",
                      notes: "1",
                      urlProfilePict: "msgwrt.jpg",
                      postText: "Do I have to smile and pretend(?)",
                    ),
                    BuildPost(
                      writer: "adminadminwattpad",
                      notes: "2",
                      urlProfilePict: "adminadminblog.jpg",
                      postText:
                          "So Here I Am.\nWriting a FanFiction about my favorite anime, gather around with some member from the anonymous Reddit forum.",
                    ),
                    BuildPost(
                      writer: "lagiceritake",
                      notes: "1",
                      urlProfilePict: "cobaceritake.jpg",
                      postText:
                          "Saya gatau mau nulis apa\n\nTapi sekarang saya sudah tau mau nulis apa.\nHehehehe~~",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.9, 0.95),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 60,
                width: 60,
                color: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:remake_tumblr/theme/theme.dart';

class BuildPost extends StatelessWidget {
  const BuildPost({
    Key? key,
    required this.writer,
    required this.postText,
    required this.urlProfilePict,
    required this.notes,
  }) : super(key: key);

  final String writer;
  final String notes;
  final String urlProfilePict;
  final String postText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 10,
          color: Colors.transparent,
        ),
        Container(
          color: Colors.white,
          child: Column(
            children: [
              //Writer Name and Profile Picture
              Container(
                height: 68,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.green,
                          image: DecorationImage(
                            image:
                                AssetImage("assets/images/" + urlProfilePict),
                            fit: BoxFit.cover,
                          )),
                      // child: Image(
                      //   image: AssetImage("assets/images/" + urlProfilePict),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          writer,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Follow",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      child: Icon(Icons.more_vert),
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                    ),
                  ],
                ),
              ),
              //Line space bar
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.withAlpha(50),
              ),
              //Text Content
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, top: 25, bottom: 35, right: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Text(
                      postText,
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              //Notes, share, and comment
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 17),
                      child: Text(
                        notes + " notes",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: notesColor,
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.share, color: notesColor),
                          Icon(Icons.chat_bubble_outline_outlined,
                              color: notesColor),
                          Icon(Icons.repeat, color: notesColor),
                          Icon(Icons.favorite_border, color: notesColor),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Space for next post
              SizedBox(height: 20),
            ],
          ),
        ),
        Container(
          height: 15,
          color: Colors.transparent,
        ),
      ],
    );
  }
}

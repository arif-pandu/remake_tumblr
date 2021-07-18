import 'package:flutter/material.dart';
import 'package:remake_tumblr/widget/profile_following.dart';
import 'package:remake_tumblr/widget/profile_like.dart';
import 'package:remake_tumblr/widget/profile_post.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  // Controller for tab bar
  late TabController controller;
  //Index for tab bar
  int selectedIndex = 0;

  @override
  void initState() {
    controller = new TabController(
      length: 3,
      vsync: this,
      initialIndex: selectedIndex,
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          Stack(
            children: [
              Container(
                // height: 300,
                // width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        image: DecorationImage(
                            image: AssetImage("assets/images/siapahayo_bg.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.lightBlue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(
                              "Ailuropoda melanoleuca",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 35,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          // Tabbar view
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: TabBar(
                              controller: controller,
                              indicatorColor: Colors.black,
                              unselectedLabelColor: Colors.black45,
                              labelColor: Colors.black87,
                              onTap: (int index) {
                                setState(() {
                                  selectedIndex = index;
                                  controller.animateTo(index);
                                });
                              },
                              tabs: [
                                Text(
                                  "Posts",
                                  style: TextStyle(
                                      // color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Likes",
                                  style: TextStyle(
                                      // color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Following",
                                  style: TextStyle(
                                      // color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Align(
                  alignment: Alignment(0, -0.27),
                  child: Container(
                    height: 95,
                    width: 95,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/siapahayo.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.lightBlue, width: 4),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Align(
                  alignment: Alignment(0, -1),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Row(
                      children: [
                        Text(
                          "damislud",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Icon(Icons.arrow_drop_down,
                            color: Colors.white, size: 27),
                        Spacer(),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.35,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.search, color: Colors.white, size: 27),
                              Icon(Icons.palette,
                                  color: Colors.white, size: 27),
                              Icon(Icons.share, color: Colors.white, size: 27),
                              Icon(Icons.settings,
                                  color: Colors.white, size: 27),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 3 + 20,
            child: TabBarView(
              controller: controller,
              children: [
                ProfilePost(),
                ProfileLike(),
                ProfileFollowing(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

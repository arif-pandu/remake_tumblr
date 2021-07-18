import 'package:flutter/material.dart';
import 'package:remake_tumblr/widget/activity.dart';
import 'package:remake_tumblr/widget/message.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage>
    with SingleTickerProviderStateMixin {
  // Controller for tab bar
  late TabController controller;
  //Index for tab bar
  int selectedIndex = 1;

  @override
  void initState() {
    controller = new TabController(
      length: 2,
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
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                    child: Text(
                      "damislud",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
                    child: Icon(Icons.more_vert),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Colors.grey.withOpacity(0.4),
                width: 0.8,
              ))),
            ),
            // Tab Activity and message
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: TabBar(
                controller: controller,
                unselectedLabelColor: Colors.grey[800],
                labelColor: Colors.blue,
                indicatorColor: Colors.blue,
                isScrollable: false,
                onTap: (int index) {
                  setState(() {
                    selectedIndex = index;
                    controller.animateTo(index);
                  });
                },
                tabs: [
                  Text(
                    "Activity",
                  ),
                  Text(
                    "Message",
                  ),
                ],
              ),
            ),
            Flexible(
              child: TabBarView(
                controller: controller,
                children: [
                  Activity(),
                  Message(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

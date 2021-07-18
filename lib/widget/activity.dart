import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding: EdgeInsets.only(left: 12),
                  child: Row(
                    children: [
                      Icon(Icons.bolt, color: Colors.black54),
                      Text(
                        "All Activity",
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[100],
                child: Column(
                  children: [
                    BuildNotificationDate(
                      notificationDate: "Tuesday 13 July",
                    ),
                    BuildNotificationDetail(
                      urlImageNotification: "msgwrt.jpg",
                      notificationType: "Aa",
                      followerName: "emesgeweerte",
                      notificationExplained: ' liked your post "Hey!"',
                      notificationColor: Colors.black,
                      notificationTypeColor: Colors.white,
                      notificationIcon: Icons.favorite,
                      notificationIconColor: Colors.red,
                    ),
                    BuildNotificationDate(
                      notificationDate: "Friday 2 July",
                    ),
                    BuildNotificationDetail(
                      urlImageNotification: "adminadminblog.jpg",
                      notificationType: '',
                      followerName: "adminadminwattpad",
                      notificationExplained: " started following siapahayo",
                      notificationColor: Colors.transparent,
                      notificationTypeColor: Colors.transparent,
                      notificationIcon: Icons.add,
                      notificationIconColor: Colors.blue,
                    ),
                    BuildNotificationDetail(
                      urlImageNotification: "cobaceritake.jpg",
                      notificationType: 'Aa',
                      followerName: "lagiceritake",
                      notificationExplained: ' liked your post "Day 2"',
                      notificationColor: Colors.black,
                      notificationTypeColor: Colors.white,
                      notificationIcon: Icons.favorite,
                      notificationIconColor: Colors.red,
                    ),
                    BuildNotificationDate(
                      notificationDate: "Tuesday 1 July",
                    ),
                    BuildNotificationDetail(
                      urlImageNotification: "baryakapila.jpg",
                      notificationType: "Aa",
                      followerName: "zsuska",
                      notificationExplained: ' liked your post "Hmmmm ya"',
                      notificationColor: Colors.black,
                      notificationTypeColor: Colors.white,
                      notificationIcon: Icons.favorite,
                      notificationIconColor: Colors.red,
                    ),
                    BuildNotificationDate(
                      notificationDate: "Wednesday 0 July",
                    ),
                    BuildNotificationDetail(
                      urlImageNotification: "baryakapila.jpg",
                      notificationType: '',
                      followerName: "zsuska",
                      notificationExplained: " started following siapahayo",
                      notificationColor: Colors.transparent,
                      notificationTypeColor: Colors.transparent,
                      notificationIcon: Icons.add,
                      notificationIconColor: Colors.blue,
                    ),
                    BuildNotificationDetail(
                      urlImageNotification: "msgwrt.jpg",
                      notificationType: 'Aa',
                      followerName: "emesgeweerte",
                      notificationExplained: " started following siapahayo'",
                      notificationColor: Colors.transparent,
                      notificationTypeColor: Colors.transparent,
                      notificationIcon: Icons.add,
                      notificationIconColor: Colors.blue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BuildNotificationDate extends StatelessWidget {
  const BuildNotificationDate({
    Key? key,
    required this.notificationDate,
  }) : super(key: key);

  final String notificationDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, top: 12.5, bottom: 12.5),
            child: Text(
              notificationDate,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}

class BuildNotificationDetail extends StatelessWidget {
  const BuildNotificationDetail({
    Key? key,
    required this.urlImageNotification,
    required this.notificationType,
    required this.followerName,
    required this.notificationExplained,
    required this.notificationColor,
    required this.notificationTypeColor,
    required this.notificationIcon,
    required this.notificationIconColor,
  }) : super(key: key);

  final String urlImageNotification;
  final String notificationType;
  final String followerName;
  final String notificationExplained;
  final Color notificationColor;
  final Color notificationTypeColor;
  final IconData notificationIcon;
  final Color notificationIconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 15, right: 10, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 48,
            width: 48,
            // color: Colors.blue,
            child: Center(
              child: Stack(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/" + urlImageNotification),
                            fit: BoxFit.cover)),
                  ),
                  Align(
                    alignment: Alignment(1, 1),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: notificationIconColor,
                        height: 17,
                        width: 17,
                        child: Center(
                          child: Icon(
                            notificationIcon,
                            size: 13,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            width: MediaQuery.of(context).size.width * 0.62,
            // color: Colors.green,
            child: RichText(
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                  text: followerName,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                TextSpan(
                  text: notificationExplained,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 16),
                ),
              ]),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            color: notificationColor,
            child: Center(
              child: Text(
                notificationType,
                style: TextStyle(
                  fontSize: 37,
                  color: notificationTypeColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

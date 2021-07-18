import 'package:flutter/material.dart';

class ProfileFollowing extends StatelessWidget {
  const ProfileFollowing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "6 Tumblr",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                BuildFollowingProfile(
                  profileImg: "nurunala.jpg",
                  profileName: "nurunala",
                  profileBio: "",
                ),
                BuildFollowingProfile(
                  profileImg: "kurniawangunadi.jpg",
                  profileName: "kurniawangunadi",
                  profileBio: "",
                ),
                BuildFollowingProfile(
                  profileImg: "cobaceritake.jpg",
                  profileName: "lagiceritake",
                  profileBio: "katalis inersia",
                ),
                BuildFollowingProfile(
                  profileImg: "msgwrt.jpg",
                  profileName: "emesgeweerte",
                  profileBio: "lunar",
                ),
                BuildFollowingProfile(
                  profileImg: "adminadminblog.jpg",
                  profileName: "adminadminwattpad",
                  profileBio: "lock off",
                ),
                BuildFollowingProfile(
                  profileImg: "baryakapila.jpg",
                  profileName: "zsuska",
                  profileBio: "a better me has come",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BuildFollowingProfile extends StatelessWidget {
  const BuildFollowingProfile({
    required this.profileImg,
    required this.profileName,
    required this.profileBio,
    Key? key,
  }) : super(key: key);

  final String profileImg;
  final String profileName;
  final String profileBio;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 64,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/" + profileImg),
                    fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  profileName,
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  profileBio,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
              child: Icon(
            Icons.person,
            color: Colors.black,
            size: 30,
          )),
        ],
      ),
    );
  }
}

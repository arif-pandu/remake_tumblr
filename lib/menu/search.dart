import 'package:flutter/material.dart';
import 'package:remake_tumblr/theme/theme.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 246.0,
          backgroundColor: themeMainColor,
          iconTheme: IconThemeData(color: Colors.white),
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
            centerTitle: true,
            background: Image(
              image: AssetImage("assets/images/estella.jpg"),
              height: 246,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            title: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 30,
              width: 154,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                      Icons.search,
                      color: Colors.grey[500],
                      size: 15,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.5, bottom: 7.5),
                    child: Text(
                      "Search",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Column(
                  children: [
                    //Tags You Follow
                    Container(
                      height: 162,
                      width: MediaQuery.of(context).size.width,
                      color: themeMainColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(15, 10, 20, 15),
                                  child: Text(
                                    "Tags you follow",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: "Helvetica",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(20, 10, 20, 15),
                                  child: Text(
                                    "Manage",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                BuildTagYouFollow(
                                  urlTagYouFollow: "cat.jpg",
                                  tagTitle: "#cat",
                                ),
                                BuildTagYouFollow(
                                  urlTagYouFollow: "kiminonawa.jpg",
                                  tagTitle: "#anime",
                                ),
                                BuildTagYouFollow(
                                  urlTagYouFollow: "digital.jpg",
                                  tagTitle: "#tech",
                                ),
                                BuildTagYouFollow(
                                  urlTagYouFollow: "meme.png",
                                  tagTitle: "#meme",
                                )
                              ],
                            ),
                          ),
                          // SizedBox(
                          //   height: 10,
                          //   width: MediaQuery.of(context).size.width,
                          // ),
                        ],
                      ),
                    ),
                    // Check out these tags
                    Container(
                      color: themeMainColor,
                      width: MediaQuery.of(context).size.width,
                      height: 234,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15, bottom: 15),
                                child: Text(
                                  "Check out these tags",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontFamily: "Helvetica",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 172,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                BuildCheckOutTags(
                                  urlTheseTags: "psyduck.jpg",
                                  tagTheseTitle: "#pokemon",
                                  urlTheseTagsTwo: "togepi.jpg",
                                  colorCheckTags: Colors.amber,
                                ),
                                BuildCheckOutTags(
                                  urlTheseTags: "manhwa_estella.jpg",
                                  tagTheseTitle: "#manhwa",
                                  urlTheseTagsTwo:
                                      "manhwa_who_made_me_princess.jpg",
                                  colorCheckTags: Colors.pink,
                                ),
                                BuildCheckOutTags(
                                  urlTheseTags: "knitting_teddybear.jpg",
                                  tagTheseTitle: "#knitting",
                                  urlTheseTagsTwo: "knitting_icecream.jpg",
                                  colorCheckTags: Colors.brown,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Check Out These Blogs
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 432,
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Text(
                                  "Check out these blogs",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Helvetica",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 14),
                          Container(
                            height: 380,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                BuildCheckBlog(
                                  writerName: "siapahayo",
                                  writerDesc: "",
                                  bioName: "Ailuropoda melanoleuca",
                                  mainBackColor: Colors.blueAccent,
                                  backColor: "siapahayo_bg.jpg",
                                  profilePict: "siapahayo.jpg",
                                  likedByWho: "you",
                                ),
                                BuildCheckBlog(
                                  writerName: "emesgeweerte",
                                  writerDesc: "Just make a piece of crescent",
                                  bioName: "lunar",
                                  mainBackColor: Colors.blue,
                                  backColor: "msgwrt_bg.jpg",
                                  profilePict: "msgwrt.jpg",
                                  likedByWho: "alvysyhrn",
                                ),
                                BuildCheckBlog(
                                  writerName: "lagiceritake",
                                  writerDesc: "katalis inersia",
                                  bioName: "kokorokenko",
                                  mainBackColor: Colors.blue,
                                  backColor: "cobaceritake_bg.jpg",
                                  profilePict: "cobaceritake.jpg",
                                  likedByWho: "quraners",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Try These Posts
                    Container(
                      color: Colors.transparent,
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15, bottom: 5),
                                child: Text(
                                  "Try these posts",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Helvetica",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            color: Colors.transparent,
                            height: MediaQuery.of(context).size.width,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.width /
                                                  3 -
                                              10,
                                      width: MediaQuery.of(context).size.width /
                                              3 -
                                          10,
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "Ketika dua insan pemalu saling bertemu, tidak lain tidak bukan hanyalah diam tersipu yang ada",
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10)),
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.width /
                                                  3 -
                                              10,
                                      width: MediaQuery.of(context).size.width /
                                              3 -
                                          10,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/manhwa_estella.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.width /
                                                  3 -
                                              10,
                                      width: MediaQuery.of(context).size.width /
                                              3 -
                                          10,
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "Mungkin aku bisa bercinta dengan kamu, kendati kata-katamu selalu menusuk jantung, melukaiku",
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10))),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      color: Colors.white,
                                      height:
                                          MediaQuery.of(context).size.width /
                                                  3 -
                                              10,
                                      width: MediaQuery.of(context).size.width /
                                              3 -
                                          10,
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "Kurasakan pudar dalam hatiku, kulelah dengan semua yang ada, mungkin ku kan bahagia",
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.white,
                                      height:
                                          MediaQuery.of(context).size.width /
                                                  3 -
                                              10,
                                      width: MediaQuery.of(context).size.width /
                                              3 -
                                          10,
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "Only need the light when it's burning low, only miss the sun when it's starts to snow",
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.width /
                                                  3 -
                                              10,
                                      width: MediaQuery.of(context).size.width /
                                              3 -
                                          10,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/psyduck.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.width /
                                                  3 -
                                              10,
                                      width: MediaQuery.of(context).size.width /
                                              3 -
                                          10,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10)),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/togepi.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                    Container(
                                      color: Colors.white,
                                      height:
                                          MediaQuery.of(context).size.width /
                                                  3 -
                                              10,
                                      width: MediaQuery.of(context).size.width /
                                              3 -
                                          10,
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "You don't know oo..oooh, You don't know you're beautiful. That what's makes you beautiful",
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.width /
                                                  3 -
                                              10,
                                      width: MediaQuery.of(context).size.width /
                                              3 -
                                          10,
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "So before you go, was there somthing i could say to make your heart beat better",
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // TRENDING NOW
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 15, bottom: 5),
                                child: Text(
                                  "Trending now",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Helvetica",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          BuildTrendingNow(
                            trendingTitle: "pokemon",
                            tagTrending1: "#pokemon ",
                            tagTrending2: "#pikachu ",
                            tagTrending3: "#cutepokemonelectric ",
                            trendingNumber: "1",
                          ),
                          BuildTrendingNow(
                            trendingTitle: "amigurami",
                            tagTrending1: "#pouch ",
                            tagTrending2: "#keychain ",
                            tagTrending3: "#homemadebag ",
                            trendingNumber: "2",
                          ),
                          BuildTrendingNow(
                            trendingTitle: "pandemic",
                            tagTrending1: "#coronavirus ",
                            tagTrending2: "#covid19 ",
                            tagTrending3: "#virussssssssss ",
                            trendingNumber: "3",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BuildTrendingNow extends StatelessWidget {
  const BuildTrendingNow({
    Key? key,
    required this.trendingTitle,
    required this.tagTrending1,
    required this.tagTrending2,
    required this.tagTrending3,
    required this.trendingNumber,
  }) : super(key: key);

  final String trendingTitle;
  final String tagTrending1;
  final String tagTrending2;
  final String tagTrending3;
  final String trendingNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 20,
                    width: 20,
                    color: Colors.purple,
                    child: Center(
                      child: Text(
                        trendingNumber,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  trendingTitle,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                "Follow",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      tagTrending1,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      tagTrending2,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      tagTrending3,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.white,
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.all(10),
                      child: Text(
                          "Lorem Ipsum Dolor Sit Amet Bla Bla Bla Bla Bla"),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.white,
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.all(10),
                      child: Text(
                          "Lorem Ipsum Dolor Sit Amet Bla Bla Bla Bla Bla"),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.white,
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.all(10),
                      child: Text(
                          "Lorem Ipsum Dolor Sit Amet Bla Bla Bla Bla Bla"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Build Check out these blog
class BuildCheckBlog extends StatelessWidget {
  const BuildCheckBlog({
    Key? key,
    required this.writerName,
    required this.writerDesc,
    required this.bioName,
    required this.mainBackColor,
    required this.backColor,
    required this.profilePict,
    required this.likedByWho,
  }) : super(key: key);

  final String writerName;
  final String writerDesc;
  final String bioName;
  final Color mainBackColor;
  final String backColor;
  final String profilePict;
  final String likedByWho;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7),
      width: 242,
      height: 380,
      decoration: BoxDecoration(
        color: mainBackColor,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Stack(
        children: [
          //Profile pict BG
          Container(
            height: 136,
            width: 242,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/" + backColor),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(7),
                topRight: Radius.circular(7),
              ),
            ),
          ),
          //Description writer's blog
          Container(
            height: 380,
            width: 242,
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              writerName,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "like " + likedByWho,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Text(
                            "X",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 86,
                    height: 86,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: mainBackColor,
                        width: 4,
                      ),
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/images/" + profilePict),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            bioName,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            writerDesc,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 225,
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Follow",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: mainBackColor,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 6,
                            ),
                            child: Text(
                              "Cek cek satu dua tiga empat",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Helvetica",
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 1),
                      Container(
                        height: 75,
                        width: 75,
                        color: Colors.white,
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 6,
                            ),
                            child: Text(
                              "Lima enam tujuh delapan dembilan",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Helvetica",
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 1),
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 6,
                            ),
                            child: Text(
                              "Sepuluh seratus seribu sepuluhribu",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Helvetica",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Tag You Follow
class BuildTagYouFollow extends StatelessWidget {
  const BuildTagYouFollow({
    Key? key,
    required this.urlTagYouFollow,
    required this.tagTitle,
  }) : super(key: key);

  final String urlTagYouFollow;
  final String tagTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 7.5),
        height: 90,
        width: 131,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: AssetImage("assets/images/" + urlTagYouFollow),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Color.fromARGB(50, 0, 0, 0),
          child: Center(
            child: Text(
              tagTitle,
              style: TextStyle(
                fontFamily: "Helvetica",
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ));
  }
}

//Check Out These Tags
class BuildCheckOutTags extends StatelessWidget {
  const BuildCheckOutTags({
    Key? key,
    required this.urlTheseTags,
    required this.tagTheseTitle,
    required this.urlTheseTagsTwo,
    required this.colorCheckTags,
  }) : super(key: key);

  final String urlTheseTags;
  final String tagTheseTitle;
  final String urlTheseTagsTwo;
  final Color colorCheckTags;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7.5),
      height: 90,
      width: 141,
      decoration: BoxDecoration(
        color: colorCheckTags,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 15),
                child: Text(
                  tagTheseTitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: "Helvetica",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 62,
                width: 73,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/" + urlTheseTags),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 6),
              Container(
                height: 62,
                width: 47,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/images/" + urlTheseTagsTwo),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
          Container(
            height: 47,
            width: 126,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: Text(
                "Follow",
                style: TextStyle(
                  fontSize: 20,
                  color: colorCheckTags,
                  fontFamily: "Helvetica",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

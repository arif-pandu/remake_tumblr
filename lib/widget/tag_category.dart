import 'package:flutter/material.dart';

class BuildTagsCategory extends StatelessWidget {
  const BuildTagsCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment(-1, 0),
            child: Container(
              margin: EdgeInsets.only(left: 10, bottom: 15),
              child: Text(
                "Check out these tags",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.transparent,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                BuildTagCategoryThumb(
                    colorBack: Colors.deepOrange, tagCategory: "comic"),
                BuildTagCategoryThumb(
                    colorBack: Colors.deepPurple, tagCategory: "cats"),
                BuildTagCategoryThumb(
                    colorBack: Colors.brown, tagCategory: "music"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BuildTagCategoryThumb extends StatelessWidget {
  const BuildTagCategoryThumb({
    Key? key,
    required this.colorBack,
    required this.tagCategory,
  }) : super(key: key);

  final Color colorBack;
  final String tagCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: 142,
      margin: EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: colorBack,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment(-0.8, 0),
            child: Text(
              "#" + tagCategory,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 17.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage("assets/images/togepi.jpg"),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  height: 60,
                  width: 46,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage("assets/images/psyduck.jpg"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            height: 46,
            width: 125,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Container(
              margin: EdgeInsets.all(12),
              child: Text(
                "Follow",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: colorBack,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.emoji_emotions,
                    size: 60,
                    color: Colors.black54,
                  ),
                  Text(
                    "Talk to a Tumblr",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 130,
                    width: 270,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/adminadminblog.jpg"),
                                fit: BoxFit.cover,
                              )),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/cobaceritake.jpg"),
                                fit: BoxFit.cover,
                              )),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image:
                                    AssetImage("assets/images/baryakapila.jpg"),
                                fit: BoxFit.cover,
                              )),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage("assets/images/msgwrt.jpg"),
                                fit: BoxFit.cover,
                              )),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage("assets/images/nurunala.jpg"),
                                fit: BoxFit.cover,
                              )),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image:
                                    AssetImage("assets/images/siapahayo.jpg"),
                                fit: BoxFit.cover,
                              )),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage("assets/images/quraners.jpg"),
                                fit: BoxFit.cover,
                              )),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/kurniawangunadi.jpg"),
                                fit: BoxFit.cover,
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(1, 1),
          child: Container(
            margin: EdgeInsets.only(right: 20, bottom: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                height: 65,
                width: 65,
                color: Colors.blue[400],
                child: Icon(
                  Icons.add_comment,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

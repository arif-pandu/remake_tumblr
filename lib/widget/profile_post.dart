import 'package:flutter/material.dart';
import 'package:remake_tumblr/theme/theme.dart';

class ProfilePost extends StatelessWidget {
  const ProfilePost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          BuildPostPrivate(
            writer: "siapahayo",
            postText:
                "Baru terpikirkan sekarang. Memaksa sesuatu yang kita suka agar juga disukai oleh orang lain terdengar seperti sebuah ide buruk.\n\nPun kalau orang lain tidak enak hati menolak menyukai apa yang jadi kegemaran kita, rasanya serba menjadi setengah-setengah.\n\nMenulis, bukan ide yang buruk. Tapi akan buruk jika dipaksakan pada orang yang tidak gemar menulis.",
            urlProfilePict: "siapahayo.jpg",
            notes: "1",
          ),
          BuildPostPrivate(
            writer: "siapahayo",
            postText:
                "Kalau hanya sabar yang menjadi bekal, lantas kapan diri ini akan berubah.",
            urlProfilePict: "siapahayo.jpg",
            notes: "1",
          ),
          BuildPostPrivate(
            writer: "siapahayo",
            postText:
                "Tahu aku tak tahu.\n\nTak tahu bahwa siapa saja bisa membaca kalimat ini, bahkan tanpa akun sekalipun.\n\nTak tahu bahwa selembar kelopak tak kunjung mengering meski hampir setahun lamanya.\n\nTak tahu tentang genre kesukaan, atau role-model penulis, mungkin juga kutipan-kutipan favorit.\n\nTak tahu bagaimana cerita berujung. Apapun akhirnya semoga demikianlah yang terbaik.",
            urlProfilePict: "siapahayo.jpg",
            notes: "1",
          ),
          BuildPostPrivate(
            writer: "siapahayo",
            postText:
                "Tak bisa dipungkiri ketika langit begitu gelap malam ini, pasti bintang di angkasa sedang iri melihat terang pesonamu.",
            urlProfilePict: "siapahayo.jpg",
            notes: "1",
          ),
          BuildPostPrivate(
            writer: "siapahayo",
            postText:
                "Baru terpikirkan sekarang. Memaksa sesuatu yang kita suka agar juga disukai oleh orang lain terdengar seperti sebuah ide buruk.\n\nPun kalau orang lain tidak enak hati menolak menyukai apa yang jadi kegemaran kita, rasanya serba menjadi setengah-setengah.\n\nMenulis, bukan ide yang buruk. Tapi akan buruk jika dipaksakan pada orang yang tidak gemar menulis.",
            urlProfilePict: "siapahayo.jpg",
            notes: "1",
          ),
          BuildPostPrivate(
            writer: "siapahayo",
            postText:
                "Kalau hanya sabar yang menjadi bekal, lantas kapan diri ini akan berubah.",
            urlProfilePict: "siapahayo.jpg",
            notes: "1",
          ),
          BuildPostPrivate(
            writer: "siapahayo",
            postText:
                "Baru terpikirkan sekarang. Memaksa sesuatu yang kita suka agar juga disukai oleh orang lain terdengar seperti sebuah ide buruk.\n\nPun kalau orang lain tidak enak hati menolak menyukai apa yang jadi kegemaran kita, rasanya serba menjadi setengah-setengah.\n\nMenulis, bukan ide yang buruk. Tapi akan buruk jika dipaksakan pada orang yang tidak gemar menulis.",
            urlProfilePict: "siapahayo.jpg",
            notes: "1",
          ),
        ],
      ),
    );
  }
}

class BuildPostPrivate extends StatelessWidget {
  const BuildPostPrivate({
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
                      ],
                    ),
                    Spacer(),
                    Container(
                      child: Icon(Icons.more_horiz),
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
                          Icon(Icons.edit, color: notesColor),
                          Icon(Icons.delete, color: notesColor),
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

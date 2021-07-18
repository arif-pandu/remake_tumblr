import 'package:flutter/material.dart';
import 'package:remake_tumblr/theme/theme.dart';

class ProfileLike extends StatelessWidget {
  const ProfileLike({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          BuildLikePrivate(
            writer: "emesgeweerte",
            postText:
                "Bulan itu tampak terang, namun sayang terhalang oleh kapas awan.\n\nSeperti kamu, cukup menyala di dalam. Sayangnya terhalang dan entah oleh karena apa. Bisakah kau merobek kapas awan? Jangan karena ia terlihat lebih banyak lantas menjadikan terhalang. Yang terpenting adalah percaya pada cahaya sendiri. Karena belum tentu akan lebih terang pada lain hari. Bisa saja terjadi gerhana yang mengancam gelap. Namun ketika terang jangan sampai hanya sampai pada dalam saja. Harapannya dapat membagikan cahaya pada semesta lainnya.\n\nHanya terpaku pada satu inti, lantas mengapa masih menaruh hati (?)",
            urlProfilePict: "msgwrt.jpg",
            notes: "1",
          ),
          BuildLikePrivate(
            writer: "nurunala",
            postText:
                "Akan Tetap Pergi\n\n\nSuatu waktu, ada seseorang yang tiba-tiba hadir di hidupmu. Bagimu, ia sosok yang tepat. Tidak sempurna, tentu saja, tetapi sebagian besar yang ada di dirinya sudah sesuai kriteria.\n\nTidak salah lagi. Kali ini, kamu cukup yakin keluarga dan lingkunganmu akan menerimanya dengan tangan terbuka. Akan ada satu dua yang saling berbisik tentang ketidaksempurnaannya, tentu saja, tetapi tidak apa-apa. Itu tandanya ia masih manusia.\n\nIni pasti konspirasi semesta, batinmu. Tiba-tiba harimu jadi penuh bunga.\n\nLalu, tanpa menunggu lama, kamu diam-diam mendekatinya. Mencari tahu apa yang disuka dan tak disukanya. Menciptakan pertemuan-pertemuan kecil yang seolah tak sengaja. Melakukan aneka tindakan bodoh untuk mencuri perhatiannya. Merancang strategi tahap demi tahap untuk memenangkan hatinya.\n\nSayangnya, ia tampak acuh tak acuh pada setiap usahamu. Setelah semua yang kamu lakukan, baginya dirimu hanyalah seorang teman, sebagaimana orang-orang lain di sekitarnya.\n\nKamu marah, entah pada siapa. Tetapi bisikan itu terus terngiang di telingamu: amour vincit omnia … cinta menaklukkan segalanya. Belum lagi imaji tentang betapa indahnya dunia bila kamu bisa selalu bersama dengannya. Maka, meski masih sibuk menyatukan potongan-potongan hati yang patah, kamu tak berhenti berusaha.\n\nHatinya pasti kan luluh bersama waktu, ucapmu meyakinkan diri.\n\nSayangnya lagi, ia benar-benar ingin pergi. Kamu sedih, tentu saja, tetapi mau bagaimana lagi?\n\nMemang begitu cara dunia bekerja. Tak semua yang kita damba jadi nyata. Tak semua cita bertemu dengan izin Sang Pencipta.\n\nSekuat apa pun kamu berusaha menahannya, yakinlah: yang ingin pergi akan tetap pergi.\n\nSehebat apa pun upayamu untuk memenangkan hatinya, percayalah: yang tak benar-benar mencintaimu akan meninggalkanmu.\n\nSemua hanya soal waktu.\n\n…",
            urlProfilePict: "nurunala.jpg",
            notes: "1,907",
          ),
          BuildLikePrivate(
            writer: "nurunala",
            postText:
                "Perempuan Pendiam & Laki-laki yang Tak Peka\n\nPerjumpaan perempuan pendiam dengan laki-laki yang tak peka adalah bencana. Adalah erupsi gunung berapi. Adalah banjir bandang. Adalah angin puting beliung. Adalah tsunami. Adalah aku dan kamu.\n\nAku yang tak berbakat menerjemahkan keterdiaman. Aku yang terlalu lugu—merasa bahwa semua baik-baik saja. Aku yang punya keterampilan kurang memadai dalam mengerti apa yang ada di dalam hati.\n\nContinue…\n\n\nView On WordPress",
            urlProfilePict: "nurunala.jpg",
            notes: "188",
          ),
        ],
      ),
    );
  }
}

class BuildLikePrivate extends StatelessWidget {
  const BuildLikePrivate({
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
                          Icon(Icons.favorite, color: Colors.red),
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

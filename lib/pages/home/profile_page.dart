import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
        title: Text("Profile"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      // Avatar
                      Image.asset(
                        "assets/profile-1.png",
                        height: 100,
                        width: 100,
                      ),

                      // Email
                      SizedBox(height: 10),
                      Text(
                        "Soroushnorozyui@gmail.com",
                        style: GoogleFonts.quicksand(
                          color: Color(0xff222222),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 20),

                      // Fullname

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                "778",
                                style: GoogleFonts.quicksand(
                                  color: Color(0xff222222),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "Followers",
                                style: GoogleFonts.quicksand(
                                  color: Color(0xff585858),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 50),
                          Column(
                            children: [
                              Text(
                                "243",
                                style: GoogleFonts.quicksand(
                                  color: Color(0xff222222),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "Following",
                                style: GoogleFonts.quicksand(
                                  color: Color(0xff585858),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    "PUBLIC PLAYLISTS",
                    style: GoogleFonts.quicksand(
                      color: Color(0xff222222),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    _MusicItem(
                      image: "assets/profile-2.png",
                      title: "Dont Smile At Me",
                      subtitle: "Billie Eilish",
                      duration: "5:33",
                    ),
                    _MusicItem(
                      image: "assets/profile-3.png",
                      title: "As It Was",
                      subtitle: "Harry Styles",
                      duration: "5:33",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MusicItem extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String duration;

  const _MusicItem(
      {super.key,
        required this.image,
        required this.title,
        required this.subtitle,
        required this.duration});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {},
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              height: 56,
              width: 56,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.quicksand(
                    color: Color(0xff000000),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.quicksand(
                    color: Color(0xff000000),
                    fontSize: 15,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Text(
            duration,
            style: GoogleFonts.quicksand(
              color: Color(0xff000000),
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.linear_scale_sharp,
            color: Color(0xff000000),
          ),
        ],
      ),
    );
  }
}




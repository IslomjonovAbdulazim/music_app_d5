import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedOption = "News";
  final options = ["News", "Video", "Artists", "Podcasts"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: CupertinoButton(
          onPressed: () {},
          child: Icon(
            CupertinoIcons.search,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: Image.asset(
          "assets/spotify.png",
          height: 40,
        ),
        actions: [
          CupertinoButton(
            onPressed: () {},
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 190,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 120,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xff42C83C),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "New Album",
                          style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 170,
                              child: Text(
                                "Happier Than Ever",
                                style: GoogleFonts.quicksand(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  height: 1.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Billie Eilish",
                          style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      "assets/home-3.png",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 40,
              child: ListView.builder(
                itemCount: options.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        selectedOption = options[index];
                        setState(() {});
                      },
                      child: Text(
                        options[index],
                        style: GoogleFonts.quicksand(
                          color: selectedOption == options[index]
                              ? Color(0xff000000)
                              : Color(0xffBEBEBE),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Music extends StatelessWidget {
  final String image;
  final String title;
  final String artist;
  const _Music({super.key, required this.image, required this.title, required this.artist});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        children: [

        ],
      ),
    );
  }
}




import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LikedPage extends StatefulWidget {
  const LikedPage({super.key});

  @override
  State<LikedPage> createState() => _LikedPageState();
}

class _LikedPageState extends State<LikedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff1b232a),
        surfaceTintColor: Color(0xff1b232a),
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: Image.asset("assets/liked-2.png"),
          ),
          SizedBox(height: 10),
          Text(
            "Billie Eilish",
            style: GoogleFonts.quicksand(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xff222222),
            ),
          ),
          Text(
            "2 Album, 67 Track",
            style: GoogleFonts.quicksand(
              color: Color(0xff393939),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis adipiscing vestibulum orci enim, nascetur vitae ",
              style: GoogleFonts.quicksand(
                color: Color(0xff838383),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                "Albums",
                style: GoogleFonts.quicksand(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff222222),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}



















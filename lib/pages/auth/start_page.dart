import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'register_page.dart';
import 'sign_in_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100),
                Image.asset(
                  "assets/spotify.png",
                  width: 240,
                ),
                SizedBox(height: 40),
                Text(
                  "Enjoy listening to music",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    color: Color(0xff383838),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Spotify is a proprietary Swedish audio streaming and media services provider",
                  style: GoogleFonts.quicksand(
                    color: Color(0xff797979),
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 70,
                        child: CupertinoButton(
                          color: Color(0xff42C83C),
                          borderRadius: BorderRadius.circular(20),
                          onPressed: () {
                            Get.to(RegisterPage());
                          },
                          child: Text(
                            "Register",
                            style: GoogleFonts.quicksand(
                              color: Color(0xffffffff),
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        height: 68,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xff313131),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: CupertinoButton(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(20),
                          onPressed: () {
                            Get.to(SignInPage());
                          },
                          child: Text(
                            "Sign In",
                            style: GoogleFonts.quicksand(
                              color: Color(0xff313131),
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
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
      ),
    );
  }
}

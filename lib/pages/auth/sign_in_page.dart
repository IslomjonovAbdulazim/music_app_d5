import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(100),
            onPressed: () {
              Get.back();
            },
            child: Icon(
              CupertinoIcons.chevron_left,
              color: Color(0xff414141),
            ),
          ),
        ),
        centerTitle: true,
        title: Image.asset(
          "assets/spotify.png",
          height: 33,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                // Sign In

                // Click Here

                TextField(
                  style: GoogleFonts.quicksand(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff414141),
                  ),
                  cursorColor: Color(0xff414141),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff383838),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff383838),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    contentPadding: EdgeInsets.all(25),
                    hintText: "enter username or email",
                    hintStyle: GoogleFonts.quicksand(
                      color: Color(0xff383838),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
































import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sign_in_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isHidden = true;

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
                Text(
                  "Register",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Color(0xff383838),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "If you need any support ",
                      style: GoogleFonts.quicksand(
                        color: Color(0xff383838),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "click here",
                      style: GoogleFonts.quicksand(
                        color: Color(0xff38B432),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),

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
                    hintText: "Full Name",
                    hintStyle: GoogleFonts.quicksand(
                      color: Color(0xff383838),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 15),
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
                    hintText: "Enter Email",
                    hintStyle: GoogleFonts.quicksand(
                      color: Color(0xff383838),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  obscureText: isHidden,
                  style: GoogleFonts.quicksand(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff414141),
                  ),
                  cursorColor: Color(0xff414141),
                  decoration: InputDecoration(
                    suffixIcon: CupertinoButton(
                      onPressed: () {
                        if (isHidden == true) {
                          isHidden = false;
                        } else if (isHidden == false) {
                          isHidden = true;
                        }
                        setState(() {});
                      },
                      child: Icon(
                        isHidden
                            ? CupertinoIcons.eye_fill
                            : CupertinoIcons.eye_slash_fill,
                        color: Color(0xff8D8D8D),
                        size: 25,
                      ),
                    ),
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
                    hintText: "Password",
                    hintStyle: GoogleFonts.quicksand(
                      color: Color(0xff383838),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                SizedBox(height: 20),
                SizedBox(
                  height: 80,
                  child: CupertinoButton(
                    color: Color(0xff42C83C),
                    borderRadius: BorderRadius.circular(30),
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        "Register",
                        style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(child: Divider()),
                    SizedBox(width: 10),
                    Text(
                      "Or",
                      style: GoogleFonts.quicksand(
                        color: Color(0xff383838),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(child: Divider()),
                  ],
                ),

                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoButton(
                      onPressed: () {},
                      child: Image.asset(
                        "assets/apple.png",
                        height: 30,
                        width: 30,
                      ),
                    ),
                    CupertinoButton(
                      onPressed: () {},
                      child: Image.asset(
                        "assets/google.png",
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Do You Have An Account?",
                      style: GoogleFonts.quicksand(
                        color: Color(0xff383838),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 10),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Get.off(SignInPage());
                      },
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.quicksand(
                          color: Color(0xff288CE9),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

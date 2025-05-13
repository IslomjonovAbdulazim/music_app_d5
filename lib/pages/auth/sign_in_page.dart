import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            onPressed: () {},
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
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}

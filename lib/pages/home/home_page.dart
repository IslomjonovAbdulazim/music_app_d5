import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                        Text("New Album"),
                        Row(
                          children: [
                            SizedBox(
                              width: 170,
                              child: Text("Happier Than Ever"),
                            ),
                          ],
                        ),
                        Text("Billie Eilish"),
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
          ],
        ),
      ),
    );
  }
}

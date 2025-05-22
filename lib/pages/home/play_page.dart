import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  AudioPlayer player = AudioPlayer();

  @override
  void initState() {
    setUp();
    super.initState();
  }

  void setUp() async {
    await player.setAsset("assets/music.mp3");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset(
                "assets/play-1.png",
                height: 400,
                width: 350,
                fit: BoxFit.cover,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bad Guy"),
                      Text("Billie Eilish"),
                    ],
                  ),
                  Spacer(),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: Icon(CupertinoIcons.heart),
                  ),
                ],
              ),

              // Slider

              SizedBox(height: 20),
              StreamBuilder<bool>(
                  stream: player.playingStream,
                  builder: (context, snapshot) {
                    final isPlaying = snapshot.data == true;
                    return CupertinoButton(
                      color: Color(0xff42C83C),
                      borderRadius: BorderRadius.circular(100),
                      onPressed: () async {
                        if (isPlaying) {
                          await player.pause();
                        } else {
                          await player.play();
                        }
                      },
                      child: SizedBox(
                        height: 60,
                        width: 60,
                        child: Icon(
                          isPlaying
                              ? CupertinoIcons.pause
                              : CupertinoIcons.play,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

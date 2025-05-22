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
  var duration = Duration.zero;

  @override
  void initState() {
    setUp();
    super.initState();
  }

  void setUp() async {
    await player.setAsset("assets/music.mp3");
    duration = player.duration ?? Duration.zero;
    setState(() {});
  }

  String format(Duration duration) {
    final min = duration.inMinutes;
    final sec = duration.inSeconds % 60;
    return "$min:$sec";
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
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
              StreamBuilder<Duration>(
                  stream: player.positionStream,
                  builder: (context, snapshot) {
                    final position = snapshot.data?.inMilliseconds ?? 0;
                    return Slider(
                      value: position.toDouble(),
                      min: 0,
                      max: (player.duration?.inMilliseconds ?? 0).toDouble(),
                      onChanged: (value) {
                        player.seek(Duration(milliseconds: value.toInt()));
                      },
                    );
                  }),

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

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    title: "FUNFONE",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: AudioApp(),
    );
  }
}

class AudioApp extends StatefulWidget {
  @override
  _AudioAppState createState() => _AudioAppState();
}

class _AudioAppState extends State<AudioApp> {
  bool playing = false;

  AudioPlayer _player;
  AudioCache cache;

  void playthat(songname) {
    _player.stop();
    cache.play("$songname.mp3");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _player = AudioPlayer();
    cache = AudioCache(fixedPlayer: _player);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
              flex: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35.0),
                child: Image.asset(
                  'assets/barbie.jpg',
                ),
              )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    child: Icon(Icons.filter_1_rounded),
                    onPressed: () {
                      playthat("sheelakijawani");
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Icon(Icons.filter_2_rounded),
                    onPressed: () {
                      playthat("chiknichameli");
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Icon(Icons.filter_3_rounded),
                    onPressed: () {
                      playthat("babydoll");
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    child: Icon(Icons.filter_4_rounded),
                    onPressed: () {
                      playthat("darubadnaam");
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Icon(Icons.filter_5_rounded),
                    onPressed: () {
                      playthat("kehlende");
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Icon(Icons.filter_6_rounded),
                    onPressed: () {
                      playthat("terimeri");
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    child: Icon(Icons.filter_7_rounded),
                    onPressed: () {
                      playthat("munnibadnaam");
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Icon(Icons.filter_8_rounded),
                    onPressed: () {
                      playthat("chammakchallo");
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Icon(Icons.filter_9_rounded),
                    onPressed: () {
                      playthat("maitera");
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

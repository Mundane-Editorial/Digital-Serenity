import 'dart:async';

import 'package:add_image_in_app/screens/my_profile.dart';
import 'package:add_image_in_app/screens/onboarding_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MeditationPage extends StatefulWidget {
  const MeditationPage({super.key});

  @override
  State<MeditationPage> createState() => _MeditationPageState();
}

class _MeditationPageState extends State<MeditationPage> {
  final player1 = AudioPlayer();
  final player2 = AudioPlayer();
  final player3 = AudioPlayer();
  bool _isPlaying1 = false;
  bool _isPlaying2 = false;
  bool _isPlaying3 = false;
  bool _isRepeatEnabled = false;
  // double _sliderValue = 0;
  // double slideValue = 0.0;

  void _togglePlayPause1() {
    setState(() {
      _isPlaying1 = !_isPlaying1;
      if (_isPlaying1) {
        playSound1();
      } else {
        pauseSound1();
      }
    });
  }

  void _togglePlayPause2() {
    setState(() {
      _isPlaying2 = !_isPlaying2;
      if (_isPlaying2) {
        playSound2();
      } else {
        pauseSound2();
      }
    });
  }

  void _togglePlayPause3() {
    setState(() {
      _isPlaying3 = !_isPlaying3;
      if (_isPlaying3) {
        playSound3();
      } else {
        pauseSound3();
      }
    });
  }

  void _toggleRepeat() {
    setState(() {
      _isRepeatEnabled = !_isRepeatEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: svgImageTop(),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: svgImageBottom(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Icon(IconButton(icon: ,))Todo: icon button
                      // Builder(
                      //   builder: (newContext) {
                      //     return IconButton(
                      //       icon: const Icon(Icons.arrow_back),
                      //       onPressed: () {
                      //         Navigator.pop(context);
                      //       },
                      //     );
                      //   },
                      // ),
                      // const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 1),
                          Text("Meditate and relax!"),
                        ],
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyProfile()),
                          );
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 1,
                                // blurRadius: 2,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: const CircleAvatar(
                            radius: 15,
                            backgroundImage:
                                AssetImage('assets/images/avatar.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Recommended",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(height: 10),
                Stack(
                  children: [
                    Container(
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(255, 255, 255, 1),
                            Color.fromRGBO(218, 233, 240, 1),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Daily 10 minutes meditation",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "10 Episodes",
                                  style: TextStyle(color: Colors.black54),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  height: 40,
                                  child: FloatingActionButton.extended(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    onPressed: () {
                                      _togglePlayPause1();
                                    },
                                    backgroundColor: Colors.white,
                                    label: const Text("Play"),
                                    icon: _isPlaying1 ? Icon(Icons.pause, color: Colors.blue ) : Icon(Icons.play_arrow,  color: Colors.blue)
                                    ),
                                  ),
                                // );
                              ],
                            ),
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/images/Yogawomen.png',
                              fit: BoxFit.cover,
                              height: 140,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            const BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: Image.asset('assets/images/lotus.png'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Stress Release",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "10 Minutes",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.lightBlueAccent,
                      ),
                      child: IconButton(
                        onPressed: () {
                          _togglePlayPause2();
                          // Add your logic for playing or pausing audio here
                          // player.play('songs/stress.mp3' as Source);
                        },
                        icon: _isPlaying2
                            ? Icon(Icons.pause, color: Colors.white)
                            : Icon(Icons.play_arrow, color: Colors.white),
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.black38,
                  indent: 10,
                  endIndent: 10,
                ),
                const SizedBox(height: 4),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Activities",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 200,
                  padding: const EdgeInsets.only(
                    bottom: 2.0,
                    top: 5,
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            const BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 0),
                            ),
                          ],
                          color: Colors.lightBlueAccent,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              const Text(
                                "Focus",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Expanded(
                                  child: Image.asset("assets/images/focus.png"))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            const BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 1),
                            ),
                          ],
                          color: Colors.orangeAccent,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              const Text(
                                "Relaxing",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Expanded(
                                  child: Image.asset("assets/images/relax.png"))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            const BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 0),
                            ),
                          ],
                          color: Colors.tealAccent.shade400,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              const Text(
                                "Healing",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              ),
                              const SizedBox(
                                height: 28,
                              ),
                              Expanded(
                                  child:
                                      Image.asset("assets/images/healing.png"))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(
                  color: Colors.black38,
                  indent: 10,
                  endIndent: 10,
                ),
                const SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    // child: IconButton(
                    //   onPressed: ()  {
                    //      playSound();
                    //   },
                    //   child: Text("Play"),
                    // ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 17.0),
                          child: Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.8),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: const Offset(0, 0),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/thumbnail.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  'Canon D',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                // Align text to the left
                                child: const Text(
                                  'Pachelbel Canon In D Major',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              //TODO: Slider
                              // slider
                              Align(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.skip_previous),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        _togglePlayPause3();
                                        // Add your logic for playing or pausing audio here
                                        // player.play(
                                        //     'songs/Canon_D.mp3' as Source);
                                      },
                                      icon: _isPlaying3
                                          ? Icon(Icons.pause)
                                          : Icon(Icons.play_arrow),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.skip_next),
                                    ),
                                    IconButton(
                                      onPressed: _toggleRepeat,
                                      icon: _isRepeatEnabled
                                          ? Icon(Icons.repeat)
                                          : Icon(Icons.repeat_one),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }


  Future<void> playSound1() async {
    var soundPath1 = "songs/meditation.mp3";
    await player1.play(AssetSource(soundPath1));
  }

  Future<void> playSound2() async {
    var soundPath2 = "songs/stress.mp3";
    await player2.play(AssetSource(soundPath2));
  }

  Future<void> playSound3() async {
    var soundPath = "songs/Canon_D.mp3";
    await player3.play(AssetSource(soundPath));
  }

  Future<void> pauseSound1() async {
    await player1.pause();
  }

  Future<void> pauseSound2() async {
    await player2.pause();
  }

  Future<void> pauseSound3() async {
    await player3.pause();
  }
}

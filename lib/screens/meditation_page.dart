import 'dart:async';

import 'package:add_image_in_app/screens/my_profile.dart';
import 'package:add_image_in_app/screens/onboarding_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello",
                            style: TextStyle(
                              fontSize: 25.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 1.h),
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
                          child:  CircleAvatar(
                            radius: 15.r,
                            backgroundImage:
                                AssetImage('assets/images/avatar.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.h),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Recommended",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 10.h),
                Stack(
                  children: [
                    Container(
                      height: 160.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
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
                                Text(
                                  "Daily 10 minutes meditation",
                                  style: TextStyle(
                                      fontSize: 22.sp,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  "10 Episodes",
                                  style: TextStyle(color: Colors.black54),
                                ),
                                SizedBox(height: 10.h),
                                SizedBox(
                                  height: 40.h,
                                  child: FloatingActionButton.extended(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0.r),
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
                              height: 140.h,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                 SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
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
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Stress Release",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "10 Minutes",
                          style: TextStyle(fontSize: 10.sp),
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
                SizedBox(height: 10.h),
                const Divider(
                  color: Colors.black38,
                  indent: 10,
                  endIndent: 10,
                ),
                SizedBox(height: 4.h),
                 Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Activities",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 200.h,
                  padding: const EdgeInsets.only(
                    bottom: 2.0,
                    top: 5,
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 140.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
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
                               Text(
                                "Focus",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Expanded(
                                  child: Image.asset("assets/images/focus.png"))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Container(
                        width: 140.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
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
                              Text(
                                "Relaxing",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                height: 40.h,
                              ),
                              Expanded(
                                  child: Image.asset("assets/images/relax.png"))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Container(
                        width: 140.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
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
                               Text(
                                "Healing",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              ),
                               SizedBox(
                                height: 28.h,
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
                SizedBox(
                  height: 8.h,
                ),
                const Divider(
                  color: Colors.black38,
                  indent: 10,
                  endIndent: 10,
                ),
                 SizedBox(
                  height: 4.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),
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
                            width: 90.w,
                            height: 90.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.r),
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
                              borderRadius: BorderRadius.circular(15.r),
                              child: Image.asset(
                                'assets/images/thumbnail.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Canon D',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                // Align text to the left
                                child: Text(
                                  'Pachelbel Canon In D Major',
                                  style: TextStyle(fontSize: 10.sp),
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

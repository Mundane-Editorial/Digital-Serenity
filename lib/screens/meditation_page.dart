import 'package:add_image_in_app/screens/my_profile.dart';
import 'package:add_image_in_app/screens/onboarding_page.dart';
import 'package:flutter/material.dart';

class MeditationPage extends StatefulWidget {
  const MeditationPage({super.key});

  @override
  State<MeditationPage> createState() => _MeditationPageState();
}

class _MeditationPageState extends State<MeditationPage> {
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
                    children: [
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
                          Text("Want to reduce your screen time"),
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
                                    onPressed: () {},
                                    backgroundColor: Colors.white,
                                    label: const Text("Play"),
                                    icon: const Icon(
                                      Icons.play_arrow,
                                      color: Colors.lightBlue,
                                    ),
                                  ),
                                ),
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
                          "Stress Relaxing",
                          style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "10 Minutes",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    const Spacer(),
                    FloatingActionButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      backgroundColor: Colors.lightBlueAccent,
                      mini: true, // Make the button mini
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ],
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
                  padding: const EdgeInsets.only(bottom: 2.0),
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
                              const SizedBox(height: 8,),
                              Expanded(child: Image.asset("assets/images/focus.png"))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 7,),
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
                              const SizedBox(height: 40,),
                              Expanded(child: Image.asset("assets/images/relax.png"))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 7,),
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
                              const SizedBox(height: 8,),
                              Expanded(child: Image.asset("assets/images/healing.png"))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8,),
                const Divider(
                  color: Colors.black38,
                  indent: 10,
                  endIndent: 10,
                ),
                const SizedBox(height: 4,),
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

                  ),
                )


              ],
            ),
          ),

        ],
      ),
    
    );
  }
}

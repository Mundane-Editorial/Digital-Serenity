import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'my_profile.dart'; // Assuming this is the correct import path
import 'onboarding_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isMenuOpen) {
          setState(() {
            isMenuOpen = false;
          });
        }
      },
      child: Scaffold(
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
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(top: 45, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey.withOpacity(0.5),
                        spreadRadius: 0.1,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    SizedBox(
                      height: MediaQuery.of(context).viewPadding.top + 110,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMenuOpen = !isMenuOpen;
                          });
                        },
                        child: const Icon(
                          Icons.menu,
                          size: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (isMenuOpen)
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueGrey,
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ListView(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => My_Profile(),
                            ),
                          );
                        },
                        child: const ListTile(
                          leading: Icon(Icons.account_circle_sharp),
                          title: Text('My Profile'),
                        ),
                      ),
                      // Add more ListTiles here
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}


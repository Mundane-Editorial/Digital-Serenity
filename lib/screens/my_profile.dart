import 'dart:ui';

import 'package:add_image_in_app/screens/onboarding_page.dart';
import 'package:add_image_in_app/screens/setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:google_fonts/google_fonts.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _My_Profile();
}

class _My_Profile extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
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
          Column(
            children: [
              const SizedBox(height: 45),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  // border: Border.all(color: Colors.black),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Builder(
                      builder: (newContext) {
                        return IconButton(
                          color: Colors.black,
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        );
                      },
                    ),
                    const Spacer(),
                    Builder(
                      builder: (newContext) {
                        return IconButton(
                          color: Colors.black,
                          icon: const Icon(Icons.settings),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Setting_Page()));
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).viewPadding.top + 100),
                Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 5,
                            blurRadius: 2,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 90,
                        backgroundImage: AssetImage('assets/images/avatar.jpg'),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            iconSize: 15,
                            icon: const Icon(
                                Icons.edit,
                                color: Colors.white),
                            onPressed: () {
                              // Handle edit action
                              Text('Edit pressed');
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Sant Xavier',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

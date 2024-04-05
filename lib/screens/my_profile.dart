import 'dart:ui';

import 'package:add_image_in_app/screens/onboarding_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My_Profile extends StatefulWidget {
  const My_Profile({super.key});

  @override
  State<My_Profile> createState() => _My_Profile();
}

class _My_Profile extends State<My_Profile> {
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
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  // border: Border.all(color: Colors.black),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    Builder(
                      builder: (newContext) {
                        return IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () {
                            Scaffold.of(newContext).openDrawer();
                          },
                        );
                      },
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        // Navigate to MyProfileScreen
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const My_Profile()),

                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 1,
                              // blurRadius: 2,
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),
                      ),
                    ), //TODO: yaha pe avatar vgera lgana hai iske baad
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

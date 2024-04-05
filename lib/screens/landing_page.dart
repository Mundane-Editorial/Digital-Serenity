import 'package:add_image_in_app/screens/my_profile.dart';
import 'package:add_image_in_app/screens/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // final TabController _tabController = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  Scaffold buildBody(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(

      ),
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
                        child: const CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                              'assets/images/avatar.jpg'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          // Container(
          //   child: TabBar(
          //     // controller: _tabController,
          //     tabs: [
          //       Tab(text: 'App Lock'),
          //       Tab(text: 'Summary'),
          //       Tab(text: 'Time Spent'),
          //     ],
          //   ),
          // ),
          // Container(
          //   width: double.maxFinite,
          //   height: 300,
          //   child: TabBarView(
          //     // controller: _tabController,
          //     children: [
          //       Text("hi"),
          //       Text("hello"),
          //       Text("hola"),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

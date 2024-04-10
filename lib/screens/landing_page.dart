import 'dart:ui';

import 'package:add_image_in_app/screens/about_us.dart';
import 'package:add_image_in_app/screens/help_and_support.dart';
import 'package:add_image_in_app/screens/meditation_page.dart';
import 'package:add_image_in_app/screens/my_profile.dart';
import 'package:add_image_in_app/screens/onboarding_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return buildBody(context);
  }

  Scaffold buildBody(BuildContext context) {
    String formattedDate = DateFormat('MMMM dd, yyyy').format(DateTime.now());
    return Scaffold(
      drawer: Drawer(
        //TODO : my Profile , About us, Focus mode, Feedback and Support, Guided meditation etc
        shadowColor: Colors.grey,
        elevation: 3,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(255, 255, 255, 1),
                    Color.fromRGBO(218, 233, 240, 0.85),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Text(
                'Digital Serenity',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                // Handle item 1 tap
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (Context) => LandingPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('My Profile'),
              onTap: () {
                // Handle item 1 tap
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (Context) => MyProfile()),
                );
              },
            ),
            ListTile(
              title: Text('Meditation'),
              leading: Icon(Icons.all_inclusive),
              onTap: () {
                // Handle item 1 tap
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (Context) => MeditationPage()),
                );
              },
            ),
            ListTile(
              title: Text('About Us'),
              leading: Icon(Icons.boy_outlined),
              onTap: () {
                // Handle item 1 tap
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (Context) => AboutUs()),
                );
              },
            ),
            ListTile(
              title: Text('Help and Support'),
              leading: Icon(Icons.help_outline),
              onTap: () {
                // Handle item 1 tap
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (Context) => HelpAndSupport()),
                );
              },
            ),
            ListTile(
              title: Text('Log Out'),
              leading: Icon(Icons.logout),
              onTap: () {
                // Handle item 1 tap
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (Context) => AboutUs()),
                );
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: svgImageTop(),
          ),
          Positioned(bottom: 0, right: 0, child: svgImageBottom()),
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
                    const SizedBox(width: 20),
                  ],
                ),
              ),
              TabBar(
                controller: tabController,
                indicator: const BoxDecoration(),
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  shadows: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
                tabs: const [
                  Tab(text: 'App Lock'),
                  Tab(text: 'Summary'),
                  Tab(text: 'Time Spent'),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).viewPadding.left + 390,
                height: 225,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Card(
                      elevation: 5,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(255, 255, 255, 1),
                              Color.fromRGBO(218, 233, 240, 0.85),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  'App Lock',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              // TODO: Add graphs or other content here
                            ],
                          ),
                        ),
                      ),
                    ), // TODO: Contents for App lock tab
                    Card(
                      elevation: 5,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(255, 255, 255, 1),
                              Color.fromRGBO(218, 233, 240, 0.85),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SizedBox(
                                width: 360,
                                height: 150,
                                child: Image.asset(
                                  'assets/images/img.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Text(
                              formattedDate,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Card(
                      elevation: 5,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(255, 255, 255, 1),
                              Color.fromRGBO(218, 233, 240, 0.85),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  'Time Spent',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              // TODO: Add graphs or other content here
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1,
              ),
              Row(
                children: [
                  const SizedBox(width: 10),
                  IconButton(
                    icon: const Icon(Icons.access_time, color: Colors.black),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                  const Text(
                    'Most Used',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Container 1
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 50,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: SvgPicture.asset(
                                'assets/images/instagram.svg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                                width:
                                    15), // Add spacing between the SVG image and the text
                            Container(
                              width: 320,
                              child: Row(
                                children: [
                                  Flexible(
                                    // Wrap the "Instagram" text with Flexible
                                    child: Text(
                                      'Instagram',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  // Add spacing between the elements
                                  const SizedBox(
                                    width: 85,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '25',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'min',
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1,
                      ),

                      // Container 2
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 50,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: SvgPicture.asset(
                                'assets/images/facebook.svg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                                width:
                                    15), // Add spacing between the SVG image and the text
                            Container(
                              width: 320,
                              child: Row(
                                children: [
                                  Flexible(
                                    // Wrap the "Instagram" text with Flexible
                                    child: Text(
                                      'Facebook',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  // Add spacing between the elements
                                  const SizedBox(
                                    width: 95,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '25',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'min',
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1,
                      ),

                      // Container 3
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        height: 50,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 35,
                              height: 35,
                              child: SvgPicture.asset(
                                'assets/images/twitter.svg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                                width:
                                    15), // Add spacing between the SVG image and the text
                            Container(
                              width: 320,
                              child: Row(
                                children: [
                                  Flexible(
                                    // Wrap the "Instagram" text with Flexible
                                    child: Text(
                                      'Twitter',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  // Add spacing between the elements
                                  const SizedBox(
                                    width: 145,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '25',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'min',
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1,
                      ),

                      // Container 4
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 50,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: SvgPicture.asset(
                                'assets/images/whatsapp.svg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                                width:
                                    15), // Add spacing between the SVG image and the text
                            Container(
                              width: 320,
                              child: Row(
                                children: [
                                  Flexible(
                                    // Wrap the "Instagram" text with Flexible
                                    child: Text(
                                      'Whatsapp',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  // Add spacing between the elements
                                  const SizedBox(
                                    width: 85,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '25',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'min',
                                        style: TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

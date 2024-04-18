import 'dart:ui';

import 'package:add_image_in_app/screens/about_us.dart';
import 'package:add_image_in_app/screens/help_and_support.dart';
import 'package:add_image_in_app/screens/login_page.dart';
import 'package:add_image_in_app/screens/meditation_page.dart';
import 'package:add_image_in_app/screens/my_profile.dart';
import 'package:add_image_in_app/screens/onboarding_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

  logout() async{
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pop();
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
                borderRadius: BorderRadius.circular(25.r),
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
                  fontSize: 24.sp,
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: () {
                // Handle item 1 tap
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (Context) => const LandingPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('My Profile'),
              onTap: () {
                // Handle item 1 tap
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (Context) => const MyProfile()),
                );
              },
            ),
            ListTile(
              title: const Text('Meditation'),
              leading: const Icon(Icons.all_inclusive),
              onTap: () {
                // Handle item 1 tap
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (Context) => const MeditationPage()),
                );
              },
            ),
            ListTile(
              title: const Text('About Us'),
              leading: const Icon(Icons.boy_outlined),
              onTap: () {
                // Handle item 1 tap
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (Context) => const AboutUs()),
                );
              },
            ),
            ListTile(
              title: const Text('Help and Support'),
              leading: const Icon(Icons.help_outline),
              onTap: () {
                // Handle item 1 tap
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (Context) => const HelpAndSupport()),
                );
              },
            ),
            ListTile(
              title: const Text('Log Out'),
              leading: const Icon(Icons.logout),
              onTap: () {
                // Handle item 1 tap
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(
                      "Log out",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    content: Text('Confirm log out ?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'cancel'),
                        child: const Text(
                          "cancel",
                          style: TextStyle(
                            color: Colors.lightBlue,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: (()=>logout()),
                        child: const Text(
                          "ok",
                          style: TextStyle(
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
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
              SizedBox(height: 45.h),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50.h,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10.w),
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
                        child: CircleAvatar(
                          radius: 15.r,
                          backgroundImage:
                              AssetImage('assets/images/avatar.png'),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.w),
                  ],
                ),
              ),
              TabBar(
                controller: tabController,
                indicator: const BoxDecoration(),
                labelStyle: TextStyle(
                  fontSize: 18.sp,
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
                unselectedLabelStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal,
                ),
                tabs: const [
                  Tab(text: 'App Lock'),
                  Tab(text: 'Summary'),
                  Tab(text: 'Time Spent'),
                ],
              ),
              SizedBox(height: 10.h),
              SizedBox(
                width: MediaQuery.of(context).viewPadding.left + 390,
                height: 225.h,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Card(
                      elevation: 5,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(255, 255, 255, 1),
                              Color.fromRGBO(218, 233, 240, 0.85),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  'App Lock',
                                  style: TextStyle(
                                    fontSize: 18.sp,
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
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
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
                                width: 360.w,
                                height: 150.h,
                                child: Image.asset(
                                  'assets/images/img.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Text(
                              formattedDate,
                              style: TextStyle(
                                fontSize: 16.sp,
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
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(255, 255, 255, 1),
                              Color.fromRGBO(218, 233, 240, 0.85),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  'Time Spent',
                                  style: TextStyle(
                                    fontSize: 18.sp,
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
              SizedBox(height: 10.h),
              const Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1,
              ),
              Row(
                children: [
                  SizedBox(width: 10.w),
                  IconButton(
                    icon: const Icon(Icons.access_time, color: Colors.black),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                  Text(
                    'Most Used',
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 30.h),
                ],
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Container 1
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              height: 40,
                              width: 40,
                              'assets/images/instagram.svg',
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                                width: 15
                                    .w), // Add spacing between the SVG image and the text

                            Text(
                              'Instagram',
                              style: TextStyle(
                                fontSize: 20.sp,
                              ),
                            ),
                            const Spacer(),
                            RichText(text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '25\n',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: 'Min\n',
                                    style: TextStyle(fontSize: 15, color: Colors.grey),
                                  ),
                                ]
                            ),
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                      ),
                      const Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              height: 40,
                              width: 40,
                              'assets/images/facebook.svg',
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                                width: 15
                                    .w), // Add spacing between the SVG image and the text
                            Text(
                              'Facebook',
                              style: TextStyle(
                                fontSize: 20.sp,
                              ),
                            ),
                            const Spacer(),
                            RichText(text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '25\n',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: 'Min\n',
                                    style: TextStyle(fontSize: 15, color: Colors.grey),
                                  ),
                                ]
                            ),
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                      ),
                      const Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              height: 35,
                              width: 35,
                              'assets/images/twitter.svg',
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                                width: 15
                                    .w),
                            Text(
                              'Instagram',
                              style: TextStyle(
                                fontSize: 20.sp,
                              ),
                            ),
                            const Spacer(),
                            RichText(text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '25\n',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: 'Min\n',
                                    style: TextStyle(fontSize: 15, color: Colors.grey),
                                  ),
                                ]
                            ),
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                      ),
                      const Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              height: 40,
                              width: 40,
                              'assets/images/whatsapp.svg',
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                                width: 15
                                    .w), // Add spacing between the SVG image and the text
                            Text(
                              'WhatsApp',
                              style: TextStyle(
                                fontSize: 20.sp,
                              ),
                            ),
                            const Spacer(),
                            RichText(text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '10\n',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: 'Min\n',
                                    style: TextStyle(fontSize: 15, color: Colors.grey),
                                  ),
                                ]
                            ),
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                      ),
                      const Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

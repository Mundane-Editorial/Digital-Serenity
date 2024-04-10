import 'package:add_image_in_app/screens/help_and_support.dart';
import 'package:add_image_in_app/screens/landing_page.dart';
import 'package:add_image_in_app/screens/meditation_page.dart';
import 'package:add_image_in_app/screens/my_profile.dart';
import 'package:add_image_in_app/screens/onboarding_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
              child: const Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LandingPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('My Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyProfile()),
                );
              },
            ),
            ListTile(
              title: const Text('Meditation'),
              leading: const Icon(Icons.all_inclusive),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MeditationPage()),
                );
              },
            ),
            ListTile(
              title: const Text('About Us'),
              leading: const Icon(Icons.boy_outlined),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutUs()),
                );
              },
            ),
            ListTile(
              title: const Text('Help and Support'),
              leading: const Icon(Icons.help_outline),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HelpAndSupport()),
                );
              },
            ),
            ListTile(
              title: const Text('Log Out'),
              leading: const Icon(Icons.logout),
              onTap: () {
                // Handle log out
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
                            builder: (context) => const MyProfile(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                        child: const CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage('assets/images/avatar.jpg'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(height: 0,),
              Expanded( // Wrap with Expanded to fix horizontal scrolling issue
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 10,),
                      const Divider(
                        color: Colors.grey,
                        endIndent: 10,
                        indent: 10,
                        thickness: 1,
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome to Digital Serenity!",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "In today's hyper-connected world, smartphones and social media have become an integral part of our daily lives, connecting billions of people globally. While these platforms offer valuable information and facilitate connections with friends and family, they also come with consequences. The interactive content and personalized recommendations can lead to addiction and impulsive use, detracting from real-world activities, relationships, and responsibilities. Excessive social media usage can negatively impact productivity, time management, physical health, and mental well-being, causing issues such as poor posture, eye strain, disturbed sleep patterns, anxiety, and social awkwardness.\n\n"
                                  "At Digital Serenity, we recognize these challenges and aim to provide a solution that promotes productivity and mindful engagement with social media without the need to completely abandon it. Our mobile application offers a high-quality cross-platform experience, empowering users to track and manage their social media usage effectively. By setting limits on screen time and encouraging conscious digital consumption, Digital Serenity helps users regain control over their digital habits and enhance their overall well-being.\n\n"
                                  "Developed using Flutter technology, our app ensures optimal performance across various platforms while prioritizing user experience and simplicity. We understand the importance of addressing social media dependency and promoting healthy digital habits. Through continuous monitoring and personalized features, Digital Serenity aims to empower users to achieve mental peace, improved productivity, and better time management.\n\n"
                                  "Join us on the journey to digital serenity, where mindful engagement with technology leads to a healthier and more balanced life.",
                              style: TextStyle(fontSize: 14),
                              textAlign: TextAlign.justify,
                            ),

                            SizedBox(height: 50,)
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
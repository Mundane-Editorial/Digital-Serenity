import 'package:add_image_in_app/screens/help_and_support.dart';
import 'package:add_image_in_app/screens/landing_page.dart';
import 'package:add_image_in_app/screens/meditation_page.dart';
import 'package:add_image_in_app/screens/my_profile.dart';
import 'package:add_image_in_app/screens/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(       //TODO : my Profile , About us, Focus mode, Feedback and Support, Guided meditation etc
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
              leading: const Icon(
                  Icons.home
              ),
              onTap: () {
                // Handle item 1 tap
                Navigator.push(context, MaterialPageRoute(builder: (Context) => const LandingPage()),);
              },
            ),
            ListTile(

              leading: const Icon(Icons.account_circle
              ),
              title: const Text('My Profile'),
              onTap: () {
                // Handle item 1 tap
                Navigator.push(context, MaterialPageRoute(builder: (Context) => const MyProfile()),);
              },
            ),
            ListTile(
              title: const Text('Meditation'),
              leading: const Icon(
                  Icons.all_inclusive
              ),
              onTap: () {
                // Handle item 1 tap
                Navigator.push(context, MaterialPageRoute(builder: (Context) => const MeditationPage()),);
              },
            ),
            ListTile(
              title: const Text('About Us'),
              leading: const Icon(
                  Icons.boy_outlined
              ),
              onTap: () {
                // Handle item 1 tap
                Navigator.push(context, MaterialPageRoute(builder: (Context) => const AboutUs()),);
              },
            ),
            ListTile(
              title: const Text('Help and Support'),
              leading: const Icon(
                  Icons.help_outline
              ),
              onTap: () {
                // Handle item 1 tap
                Navigator.push(context, MaterialPageRoute(builder: (Context) => const HelpAndSupport()),);
              },
            ),
            ListTile(
              title: const Text('Log Out'),
              leading: const Icon(
                  Icons.logout
              ),
              onTap: () {
                // Handle item 1 tap
                // Navigator.push(context, MaterialPageRoute(builder: (Context) => const AboutUs()),);
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
              child: svgImageBottom()
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
              const SizedBox(height: 20,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 50),
                          height: 300,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15), // Add rounded corners
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "About Us",
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Roboto',
                                  shadows: [
                                    Shadow(
                                      color: Colors.grey,
                                      offset: Offset(0, 0),
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 70),
                              Row(
                                children: [
                                  Text('Hi,', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),),
                                  SizedBox(width: 5,),
                                  Padding(
                                    padding: EdgeInsets.only(top: 11),
                                    child: Text("I'm", style: TextStyle(fontSize: 15),),
                                  ),
                                ],
                              ),
                              Text("Uday Rana",  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Container(
                          height: 300,
                          width: 225,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 0.1,
                                blurRadius: 50,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/images/self.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    color: Colors.grey,
                    endIndent: 10,
                    indent: 10,
                    thickness: 1,
                  ),
                  SizedBox(height: 10,),
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
                          "Digital Serenity is a groundbreaking digital platform designed to promote " +
                              "tranquility and well-being in our modern, digital-focused society. Developed " +
                              "as a significant college project, it addresses the challenges of excessive " +
                              "screen time and digital overwhelm by offering users a holistic approach to " +
                              "enhance mental and emotional wellness. Through curated features, the platform " +
                              "encourages mindful digital habits, provides tools for relaxation, and fosters " +
                              "a healthier digital lifestyle.",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.justify, // Justify the text
                        ),


                      ],
                    ),
                  ),
                      const SizedBox(height: 10,),
                        Divider(
                          color: Colors.grey,
                          endIndent: 10,
                          indent: 10,
                          thickness: 1,
                        ),
                        SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () async{
                          print('1 tapped');
                          const url1 = 'https://github.com/Mundane-Editorial';
                          if (await canLaunch(url1)) {
                            await launch(url1);
                          } else {
                            throw 'Could not launch $url1';
                          }
                          // Handle onTap for the first item
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // Remove the boxShadow property
                          ),
                          child: Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: SvgPicture.asset(
                                'assets/images/github.svg',
                                fit: BoxFit.contain, // Ensure the SVG fills the SizedBox
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 50),
                      InkWell(
                        onTap: () async{
                          print('2 tapped');
                          const url2 = 'https://www.linkedin.com/in/uday-kumar-rana/';
                          if (await canLaunch(url2)) {
                          await launch(url2);
                          } else {
                          throw 'Could not launch $url2';
                          }
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // Remove the boxShadow property
                          ),
                          child: Center(
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/gfg.png',
                                width: 47,
                                height: 47,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),


                      const SizedBox(width: 50), // Add spacing between items
                      InkWell(
                        onTap: () async{
                          print('3 tapped');
                          const url3 = 'https://www.linkedin.com/in/uday-kumar-rana/';
                          if (await canLaunch(url3)) {
                            await launch(url3);
                          } else {
                            throw 'Could not launch $url3';
                          }
                          // Handle onTap for the third item
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            // color: Colors.lightBlue,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/images/linkedin.svg',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
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

import 'package:add_image_in_app/screens/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              height: 250,
              width: 250,
              child: SvgPicture.asset(
                'assets/images/Background.svg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 250,
              width: 250,
              child: Transform.rotate(
                angle: 3.14,
                child: SvgPicture.asset(
                  'assets/images/Background.svg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).viewPadding.top + 200),
                SizedBox(
                  height: 250,
                  width: 250,
                  child: Image.asset('assets/images/logo.png'),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Digital Serenity',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 55),
                CustomButton(
                    title: 'Continue',
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (_) => const HomePage(),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double? width;
  final double? height;
  const CustomButton({super.key, required this.title, required this.onTap, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 60, top: 10, right: 20),
        height:  height ?? 50,
        width: width ??  MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(4, 35, 53, 1.0),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: const Offset(0, 5),
              blurRadius: 5,
            ),
          ],
        ),
        child: Text(
          title,
          style: GoogleFonts.robotoCondensed(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

//List<int> muList = [2,2,2,2,2,2];
//List<int?> myList = [null , 2 null , 2 , null];
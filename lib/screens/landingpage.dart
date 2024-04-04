import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'onboarding_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top + 150),
                child: const Divider(
                  thickness: 2,
                  endIndent: 60,
                  indent: 60,
                  color: Color.fromRGBO(83, 123, 143, 1.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:add_image_in_app/screens/onboarding_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordValid = true;

  @override
  void initState() {
    super.initState();
    _passwordController.addListener(_validatePassword);
  }

  @override
  void dispose() {
    _passwordController.removeListener(_validatePassword);
    _passwordController.dispose();
    super.dispose();
  }

  void _validatePassword() {
    setState(() {
      if (_passwordController.text.length >= 3) {
        _isPasswordValid = true;
      } else {
        _isPasswordValid = false;
      }
    });
  }

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
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/logo.png',
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Digital Serenity',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Create Account'),
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email/Username',
                        hintStyle: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w300),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        filled: true,
                        fillColor: const Color.fromRGBO(250, 250, 250, 0.25),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintText: 'Password',
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                      ),
                      onChanged: (val) {
                        if (val.length < 8) {
                          setState(() {
                            _isPasswordValid = false;
                          });
                        }
                      },
                    ),
                  ),
                  _isPasswordValid ? Text('') : Text('Password too short'),
                  const SizedBox(height: 20),
                  CustomButton(
                    title: 'Sign Up',
                    onTap: () {
                      // if (_formKey.currentState!.validate())
                      const Text('Login pressed');
                    },
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    thickness: 1.5,
                    indent: 60,
                    endIndent: 60,
                    color: Colors.indigo,
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20), // Adjust right padding as needed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            print('1 tapped');
                            // Handle onTap for the first item
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
                                'assets/images/google.svg',
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20), // Add spacing between items
                        InkWell(
                          onTap: () {
                            print('2 tapped');
                            // Handle onTap for the second item
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
                                'assets/images/facebook.svg',
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20), // Add spacing between items
                        InkWell(
                          onTap: () {
                            print('3 tapped');
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
                                'assets/images/twitter.svg',
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Serenity',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all<TextStyle>(
              TextStyle(fontSize: 18.0, color: Colors.blueGrey),
            ),
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Digital Serenity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              child: Image.asset('assets/images/logo.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25, // 25% of screen width
                ),
                Expanded(
                  flex: 2, // Takes 50% of the screen width
                  child: ElevatedButton(
                    onPressed: () {
                      print('Button pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(4, 35, 53, 1.0), // RGBA color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Set border radius
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), // Set padding
                    ),
                    child: Text('Continue', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.white)), // Set font size
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25, // 25% of screen width
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

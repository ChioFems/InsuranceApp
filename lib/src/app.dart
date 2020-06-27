import 'package:flutter/material.dart';
import 'pages/signin_page.dart';

 // This is the main class of the application
 // which calls the Intro screen accordingly

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Insurance Mobile App",
      theme: ThemeData(
        primaryColor: Colors.blue[900],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignInPage(),
    );
  }
}
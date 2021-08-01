import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/home.dart';
import 'package:flutter_practice/screens/login_page.dart';
import 'package:flutter_practice/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.lato().fontFamily
      ),
      initialRoute: "/",
      routes: {
        "/":(context)=>LoginPage(),
        MyRoutes.homeRoute:(context)=>HomePage()
    }
    );

  }
}
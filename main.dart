

import 'package:apposc/Constcolors.dart';
import 'package:apposc/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Club",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: kBackGround,),
        scaffoldBackgroundColor: kBackGround,
        primaryColor: Colors.white,
        // ignore: deprecated_member_use
        accentColor: kAccCol,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),
        iconTheme: const IconThemeData(color: kIcoColo),
      ),
      home: HomePage(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:profilepage/pages/profilePage.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.robotoCondensedTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

import 'package:flutter/material.dart';
//import 'package:meals_app/screens/categories_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/screens/tabs.dart';

final kTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(
      255,
      131,
      57,
      0,
    ),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: kTheme,
      themeMode: ThemeMode.dark,
      home: const TabsScreen(),
    ),
  );
}

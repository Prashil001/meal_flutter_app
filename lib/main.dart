import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/screens/categories.dart';

final appColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 158, 0, 34),
);

final appTheme = ThemeData(
  useMaterial3: true,
  colorScheme: appColorScheme,
  textTheme: GoogleFonts.changaOneTextTheme(),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    backgroundColor: appColorScheme.onPrimary,
  ),
  scaffoldBackgroundColor: appColorScheme.primary,
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: CategoriesScreen(),
    );
  }
}

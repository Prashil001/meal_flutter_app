import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/screens/tabs.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 1, 255, 200),
);

final appTheme = ThemeData(
  useMaterial3: true,
  colorScheme: appColorScheme,
  textTheme: GoogleFonts.archivoTextTheme(),
  appBarTheme: AppBarTheme(
    elevation: 3,
    shadowColor: const Color.fromARGB(255, 66, 65, 65),
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    backgroundColor: Colors.black,
  ),
  scaffoldBackgroundColor: const Color.fromARGB(80, 0, 0, 0),
);

void main() {
  runApp(const ProviderScope(child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: TabScreen(),
    );
  }
}

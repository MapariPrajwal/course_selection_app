import 'package:course_selection_app/Pages/intro_page.dart';
import 'package:flutter/material.dart';

import 'Pages/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const IntroPage(),
      routes: {
        '/intropage':(context)=>const IntroPage(),
        '/menupage':(context) => const MenuPage()
      },
    );
  }
}

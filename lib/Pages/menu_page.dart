import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
          ),
          title: Text("Find Your Best Fit",
          style: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.bold
            
          ),),
          ),
    );
  }
}
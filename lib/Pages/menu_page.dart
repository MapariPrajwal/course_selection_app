import 'package:course_selection_app/Components/AppColors/colors.dart';
import 'package:course_selection_app/Components/Models/course_model.dart';
import 'package:course_selection_app/Components/course_tile.dart';
import 'package:course_selection_app/Components/mat_bot.dart';
import 'package:course_selection_app/Components/popular_tile.dart';
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
        title: Text(
          "Find Your Best Fit",
          style: GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
        //promo
        Container(
          decoration: BoxDecoration(
              color: primaryColor, 
              borderRadius: BorderRadius.circular(20),
              ),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Get 20% Off",
                      style: GoogleFonts.dmSerifDisplay(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  MatButton(text: "Redeem", onTap: () {})
                ],
              ),
              Image.asset(
                "images/music-app.png",
                height: 100,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        //search
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "Search"
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        //menu
        Padding(
          padding: const EdgeInsets.only(left:25.0,bottom: 5,top: 5),
          child: Text(
            "Best Course Available",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
              fontSize: 18,
            ),
          ),
        ),

        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: CourseMenu.length,
            itemBuilder: (context, index) =>
                CourseTile(course: CourseMenu[index]),
          ),
        ),
        //popular
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 25.0, bottom: 10, top: 10),
          child: Text("Our Popular Courses"),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: CourseMenu.length,
            itemBuilder: (context, index) =>
                PopularCourseTile(course: CourseMenu[index]),
          ),
        ),
      ]),
    );
  }
}

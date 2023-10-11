import 'package:course_selection_app/Components/mat_bot.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Course Name
                Text(
                  "Select Course of Your Choice",
                  textScaleFactor: 0.8,
                  style: GoogleFonts.anaheim(fontSize: 24, color: Colors.white),
                ),
                const SizedBox(
                  height: 25,
                ),

                //Icon
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.asset(
                    'images/music-app.png',
                    height: 72,
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                //title
                Text(
                  "Let's choose your learnings!!!",
                  textScaleFactor: 0.8,
                  style:
                      GoogleFonts.sacramento(fontSize: 48, color: Colors.white),
                ),
                const SizedBox(
                  height: 25,
                ),
                //Subtitle
                Text(
                  "Passionate about unraveling the secrets hidden in data, I embark on a journey to turn insights into innovation and drive impactful change. Let's connect and explore the limitless possibilities at the intersection of AI, data science, and technology!",
                  style: GoogleFonts.gabriela(
                      fontSize: 18, color: Colors.grey[400], height: 2),
                ),

                //Get Started
                MatButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/menupage');
                  },
                  text: "Get Started",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:course_selection_app/Components/Models/course_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseTile extends StatelessWidget {
  final Course course;
  const CourseTile({
    super.key,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(left: 25),
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
          //Icon
          Image.asset(
            course.imagePath,
            height: 60,
          ),
          //Text
          Text(
            course.name,
            style: GoogleFonts.specialElite(
              fontSize: 20,
            ),
          ),
          //Price
          SizedBox(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              //Price
              Text(
                course.price,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),
              //Rating
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text(
                    course.rating,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ]),
          )
        ]),
      ),
    );
  }
}

import 'package:course_selection_app/Components/Models/course_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularCourseTile extends StatelessWidget {
  final Course course;
  const PopularCourseTile({
    super.key,
    required this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.8,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 25, bottom: 25),
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              course.imagePath,
              height: 30,
            ),
            const SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  course.name,
                  style: GoogleFonts.specialElite(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  course.price,
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                )
              ],
            ),
          ],
        ),
        const Align(
          alignment: Alignment.topRight,
          child: Icon(
            Icons.favorite_border_outlined,
            color: Colors.red,
            ),
        )
      ]),
    );
  }
}

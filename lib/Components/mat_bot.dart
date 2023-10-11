import 'package:flutter/material.dart';
class MatButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const MatButton({
    super.key,
    required this.text,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(212, 135, 81, 77),
          borderRadius: BorderRadius.circular(40)),
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                color:Colors.white,
                fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(width: 20,),
              const Icon(Icons.arrow_forward,color: Colors.white,)
          ],
        ),
    
      ),
    );
  }
}
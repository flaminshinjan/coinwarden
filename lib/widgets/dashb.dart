import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final VoidCallback onTap;

  const ImageButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 309,
        height: 69,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          child: Image.asset('assets/dashb.png'),
        ),
      ),
    );
  }
}

class ImageButton2 extends StatelessWidget {
  final VoidCallback onTap;
  final String imagepath;

  const ImageButton2({Key? key, required this.onTap, required this.imagepath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 309,
        height: 69,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          child: Image.asset(imagepath),
        ),
      ),
    );
  }
}

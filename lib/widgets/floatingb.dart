import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final VoidCallback onPressed;

  const CustomFloatingButton({
    Key? key,
    required this.text,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      label: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Text(text,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
      icon: Icon(iconData, color: Colors.white),
      backgroundColor: Colors.green, // Your desired background color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25), // Adjust for rounded corners
      ),
    );
  }
}

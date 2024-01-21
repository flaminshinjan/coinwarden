import 'package:coinwarden/widgets/dashb.dart';
import 'package:flutter/material.dart';

class ContentBlock extends StatelessWidget {
  final String title;
  final String backgroundImage;

  ContentBlock({required this.title, required this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Image.asset(
              backgroundImage,
              width: 340,
            ),
            Positioned(
                bottom: 20,
                child: ImageButton(
                  onTap: () {
                    Navigator.pushNamed(context, '/tutorial');
                  },
                )),
          ],
        ),
      ),
    );
  }
}

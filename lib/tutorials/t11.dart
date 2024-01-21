import 'package:coinwarden/tutorials/t12.dart';
import 'package:coinwarden/widgets/dashb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coinwarden/widgets/contentblock.dart';
import 'package:coinwarden/widgets/floatingb.dart';

class T11Page extends StatelessWidget {
  const T11Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          elevation: 0,
          toolbarHeight: 80,
          title: Row(children: [
            InkWell(
              child: Image.asset("assets/back.png", width: 50),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ])),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                "Play with Blocks",
                style: GoogleFonts.poppins(
                  fontSize: 42,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Column(
                children: [
                  Image.asset("assets/baseblock.png", width: 340),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ImageButton2(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => T12Page()),
                  );
                },
                
                imagepath: "assets/mining.png",
                width: 341,
                height: 438,
              ),
            )
          ],
        ),
      ),
      // To position the FAB at the bottom center
    );
  }
}

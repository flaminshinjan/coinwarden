import 'package:coinwarden/widgets/dashb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coinwarden/widgets/contentblock.dart';
import 'package:coinwarden/widgets/floatingb.dart';

class TutorialPage extends StatelessWidget {
  const TutorialPage({super.key});

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
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                "Illustration with Blockchain",
                style: GoogleFonts.poppins(
                  fontSize: 42,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            Image.asset("assets/tut.png", width: 340),
            SizedBox(height: 20),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 42, 41, 40),
                    textColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Text('75 min',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          )),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 42, 41, 40),
                    textColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                        '25 Lessons',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                children: [
                  Text(
                    "Course Preview",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  MaterialButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 233, 108, 99),
                    textColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        'Summary',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(children: [
                SizedBox(height: 15),
                ImageButton2(onTap: () {}, imagepath: "assets/introb.png"),
                SizedBox(height: 15),
                ImageButton2(onTap: () {}, imagepath: "assets/bcb.png"),
                SizedBox(height: 15),
                ImageButton2(onTap: () {}, imagepath: "assets/bb.png"),
              ]),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomFloatingButton(
        text: 'Swipe to unlock',
        iconData: Icons.chevron_right,
        onPressed: () {
          // Your on pressed function
          print('Button Pressed');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerFloat, // To position the FAB at the bottom center
    );
  }
}

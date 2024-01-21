import 'package:coinwarden/dashboard/dashboard.dart';
import 'package:coinwarden/widgets/dashb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coinwarden/widgets/contentblock.dart';
import 'package:coinwarden/widgets/floatingb.dart';

class T16Page extends StatelessWidget {
  const T16Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        elevation: 0,
        toolbarHeight: 80,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 90),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                children: [
                  Image.asset("assets/goodjob.png", width: 340),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: ImageButton2(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardPage()),
                  );
                },
                imagepath: "assets/backhome.png",
                width: 309,
                height: 69,
              ),
            )
          ],
        ),
      ),
      // To position the FAB at the bottom center
    );
  }
}

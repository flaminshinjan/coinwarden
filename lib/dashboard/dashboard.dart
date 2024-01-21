import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coinwarden/widgets/contentblock.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        elevation: 0,
        toolbarHeight: 100,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Hello, Shinjan!',
                      style: GoogleFonts.poppins(
                        fontSize: 22.5,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.workspace_premium_rounded,
                          color: Color.fromARGB(255, 227, 132, 64),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Basic Member',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/wolf.png',
                        width: 40.0,
                        height: 40.0,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/profile.png',
                        width: 40.0,
                        height: 40.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                "Let's Learn New Blocks!",
                style: GoogleFonts.poppins(
                  fontSize: 42,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Navigation bar (Tab-like structure)
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    color: Color.fromARGB(255, 219, 115, 71),
                    textColor: Colors.white,
                    child: Text('Blockchain'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 42, 41, 40),
                    textColor: Colors.white,
                    child: Text(
                      'Bitcoins \$',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 42, 41, 40),
                    textColor: Colors.white,
                    child: Text(
                      'Web3 Dev',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
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
              child: ListView(
                children: <Widget>[
                  // First block
                  ContentBlock(
                    title: 'Illustration with Blockchain',
                    backgroundImage:
                        'assets/illustration1.png', // replace with your asset
                  ),

                  ContentBlock(
                      title: "Learn about Hash, Blocks!",
                      backgroundImage: 'assets/illustration2.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

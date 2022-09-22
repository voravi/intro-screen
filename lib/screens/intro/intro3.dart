import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro_screen/screens/home_screen/page/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen3 extends StatefulWidget {
  const IntroScreen3({Key? key}) : super(key: key);

  @override
  _IntroScreen3State createState() => _IntroScreen3State();
}

class _IntroScreen3State extends State<IntroScreen3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onHorizontalDragEnd: (_) async {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool("isSplashScreenVisited", true);
          Navigator.pushReplacementNamed(context, "/");
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/pic3.jpg"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Saving Time",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.blue[900],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.blueAccent.withOpacity(0.7),
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () async {
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setBool("isSplashScreenVisited", true);
                        setState(() {});
                        Navigator.pushReplacementNamed(context, "/");
                      },
                      child: Text(
                        "Skip",
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500,
                            color: Colors.blueAccent,
                            fontSize: 15),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.blue[900],
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setBool("isSplashScreenVisited", true);
                        Navigator.pushReplacementNamed(context, "/");
                      },
                      child: Text("Next"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:coffee_shop/common/button.dart';
import 'package:coffee_shop/pages/signIn/signIn.dart';
import 'package:coffee_shop/pages/signUp/signUp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/Logo.png',
                    fit: BoxFit.cover,
                    width: 115,
                    height: 103,
                  ),
                  Text(
                    'Welcome To K-COFFEE',
                    style: GoogleFonts.robotoSerif(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                child: Column(
              children: [
                MyButton(
                  text: Text(
                    'Sign In',
                    style: GoogleFonts.robotoSerif(
                        fontSize: 16, color: Color(0xFF312C51)),
                  ),
                  size1: 100,
                  size2: 15,
                  backgroundColor: Color(0xFFF0C38B),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInPage(),
                        ));
                  },
                ),
                // ElevatedButton(
                //     onPressed: () {},
                //     style: ElevatedButton.styleFrom(
                //         primary: Color(0xFFF0C38B),
                //         padding:
                //             EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(20),
                //         )),
                //     child: Text(
                //       'Sign Up',
                //       style: GoogleFonts.robotoSerif(
                //           fontSize: 16, color: Color(0xFF312C51)),
                //     )),
                SizedBox(
                  height: 30,
                ),
                // ElevatedButton(
                //     onPressed: () {},
                //     style: ElevatedButton.styleFrom(
                //         primary: Color(0xFFFF1AA9B),
                //         padding:
                //             EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(20),
                //         )),
                //     child: Text(
                //       'Sign In',
                //       style: GoogleFonts.robotoSerif(
                //           fontSize: 16, color: Color(0xFF312C51)),
                //     )),
                MyButton(
                  text: Text(
                    'Sign Up',
                    style: GoogleFonts.robotoSerif(
                        fontSize: 16, color: Color(0xFF312C51)),
                  ),
                  size1: 100,
                  size2: 15,
                  backgroundColor: Color(0xFFFF1AA9B),
                  onPressed: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ));
                  }),
                )
              ],
            )),
          ],
        ),
      )),
    );
  }
}

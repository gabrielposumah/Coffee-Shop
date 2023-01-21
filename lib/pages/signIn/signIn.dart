import 'dart:ffi';

import 'package:coffee_shop/common/button.dart';
import 'package:coffee_shop/common/textField.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/Logo.png',
                        fit: BoxFit.cover,
                      ),
                      Text(
                        'Sign In',
                        style: GoogleFonts.robotoSerif(
                            fontSize: 24, color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Email',
                            style: GoogleFonts.robotoSerif(
                                fontSize: 16, color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextField(
                        hintText: 'Enter Email',
                        obsecureText: false,
                        textInputType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Password',
                            style: GoogleFonts.robotoSerif(
                                fontSize: 16, color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextField(
                        sufixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obsecureText = !_obsecureText;
                            });
                          },
                          child: Icon(
                            _obsecureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                        ),
                        hintText: 'Enter Password',
                        obsecureText: _obsecureText,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                MyButton(
                  text: Text(
                    'Sign In',
                    style: GoogleFonts.robotoSerif(
                        fontSize: 16, color: Color(0xFF312C51)),
                  ),
                  size1: 160,
                  size2: 17,
                  onPressed: () {},
                  backgroundColor: Color(0xFFFF1AA9B),
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        '------------------- or Sign in with -------------------',
                        style: GoogleFonts.robotoSerif(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      MyButton(
                        text: Text(
                          'Continue With Google',
                          style: GoogleFonts.robotoSerif(
                              fontSize: 14, color: Color(0xFF312C51)),
                        ),
                        size1: 95,
                        size2: 17,
                        onPressed: () {},
                        backgroundColor: Color(0xFFF0C38B),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MyButton(
                        text: Text(
                          'Continue With Facebook',
                          style: GoogleFonts.robotoSerif(
                              fontSize: 14, color: Color(0xFF312C51)),
                        ),
                        size1: 84,
                        size2: 17,
                        onPressed: () {},
                        backgroundColor: Color(0xFFF0C38B),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:coffee_shop/common/button.dart';
import 'package:coffee_shop/utils/colors.dart';
import 'package:coffee_shop/utils/styleText.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/textField.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Center(
        child: Column(children: [
          Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Logo.png',
                  fit: BoxFit.cover,
                ),
                Text(
                  'Sign Up',
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
                      'Full Name',
                      style: GoogleFonts.robotoSerif(
                          fontSize: 16, color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: MyColors.purpleDeep,
                  ),
                  hintText: 'Enter full name',
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
                      'Email',
                      style: GoogleFonts.robotoSerif(
                          fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                  prefixIcon: Icon(
                    Icons.email,
                    color: MyColors.purpleDeep,
                  ),
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                  prefixIcon: Icon(
                    Icons.lock_rounded,
                    color: MyColors.purpleDeep,
                  ),
                  sufixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obsecureText = !_obsecureText;
                      });
                    },
                    child: Icon(
                      _obsecureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  ),
                  hintText: 'Enter Password',
                  obsecureText: _obsecureText,
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
                      'Confirm Password',
                      style: GoogleFonts.robotoSerif(
                          fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                  prefixIcon: Icon(
                    Icons.lock_rounded,
                    color: MyColors.purpleDeep,
                  ),
                  sufixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obsecureText = !_obsecureText;
                      });
                    },
                    child: Icon(
                      _obsecureText ? Icons.visibility : Icons.visibility_off,
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
            height: 80,
          ),
          MyButton(
            text: Text(
              'Sign Up',
              style: StyleText.buttonText,
            ),
            size1: 163,
            size2: 17,
            onPressed: () {},
            backgroundColor: MyColors.orangeRed,
          )
        ]),
      ),
    )));
  }
}

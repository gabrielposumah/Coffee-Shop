import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    this.textColor,
    this.backgroundColor,
    this.borderColor,
    required this.text,
    this.icon,
    required this.size1,
    required this.size2,
    required this.onPressed,
  });
  final Color? textColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final Text text;
  final Icon? icon;
  final double size1;
  final double size2;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          padding: EdgeInsets.symmetric(horizontal: size1, vertical: size2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
      child: text,
    );
  }
}

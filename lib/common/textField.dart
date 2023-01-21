import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      this.prefixIcon,
      required this.hintText,
      this.obsecureText = false,
      this.textInputType,
      this.controller,
      this.sufixIcon});
  final Widget? prefixIcon;
  final String hintText;
  final bool obsecureText;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final Widget? sufixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 386,
      height: 46,
      child: TextFormField(
        controller: controller,
        autocorrect: true,
        obscureText: obsecureText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          suffixIcon: sufixIcon,
          filled: true,
          fillColor: Color.fromARGB(255, 255, 255, 255),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white54)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Color(0xFFF0C38B))),
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        ),
      ),
    );
  }
}

import 'package:coffee_shop/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyleText {
  static final logoText = GoogleFonts.robotoSerif(
    fontSize: 24,
    color: Colors.white,
  );

  static final titleText =
      GoogleFonts.robotoSerif(fontSize: 24, color: Colors.white);
  static final subTitle =
      GoogleFonts.robotoSerif(fontSize: 24, color: MyColors.orangeColor);

  static final buttonText =
      GoogleFonts.robotoSerif(fontSize: 14, color: MyColors.purpleDeep);

  static final textFielStyle =
      GoogleFonts.robotoSerif(fontSize: 14, color: Colors.grey);
}

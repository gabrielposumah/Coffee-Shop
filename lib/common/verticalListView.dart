import 'package:coffee_shop/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticalListView extends StatefulWidget {
  const VerticalListView({super.key});

  @override
  State<VerticalListView> createState() => _VerticalListViewState();
}

class _VerticalListViewState extends State<VerticalListView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 350,
        height: 110,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF303050),
                  Color(0xFF161638),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.2, 0.8]),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Image.asset('assets/images/coffee2.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    child: Text(
                      'Buy 1 Americano\ndisc 10%',
                      style: GoogleFonts.robotoSerif(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColors.orangeColor,
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Buy now',
                        style: GoogleFonts.robotoSerif(
                            fontSize: 13,
                            color: MyColors.purpleDeep,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

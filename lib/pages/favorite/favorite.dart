import 'package:coffee_shop/common/listFavorite.dart';
import 'package:coffee_shop/utils/styleText.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 350,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: TextFormField(
                style: TextStyle(color: Colors.white, fontSize: 12),
                decoration: InputDecoration(
                  hintText: 'Find your coffee ...',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  filled: true,
                  fillColor: Color(0xFF0A0000).withOpacity(0.5),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color(0xFF0A0000).withOpacity(0.5),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color(0xFF0A0000).withOpacity(0.5),
                    ),
                  ),
                  hintStyle: GoogleFonts.robotoSerif(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 550,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.symmetric(vertical: 20),
              itemCount: 4,
              itemBuilder: (context, index) {
                return ListFavorite();
              },
            ),
          ),
        ],
      ),
    );
  }
}

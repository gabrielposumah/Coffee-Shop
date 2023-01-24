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
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(vertical: 20),
        itemCount: 4,
        itemBuilder: (context, index) {
          return ListFavorite();
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/styleText.dart';

class ListFavorite extends StatefulWidget {
  const ListFavorite({super.key});

  @override
  State<ListFavorite> createState() => _ListFavoriteState();
}

class _ListFavoriteState extends State<ListFavorite> {
  bool _likes = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        width: 350,
        height: 110,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF303050),
                Color(0xFF1E1629),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.2, 0.8]),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Image.asset(
                'assets/images/coffee2.png',
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      children: [
                        Text(
                          'Capucino',
                          style: StyleText.subTitle,
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Container(
                          width: 63,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black.withOpacity(0.5)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Color(0xFFECC026),
                                ),
                                Text(
                                  '4.20',
                                  style: GoogleFonts.robotoSerif(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Alure Cafe',
                    style: GoogleFonts.robotoSerif(
                        fontSize: 14, color: Colors.white),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.attach_money,
                          color: Colors.white,
                        ),
                        Text(
                          '1.2                                               ',
                          style: GoogleFonts.robotoSerif(
                              fontSize: 14, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _likes = !_likes;
                          });
                        },
                        child: Icon(
                          _likes ? Icons.favorite_border : Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                      Text('                                              ')
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

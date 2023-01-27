import 'package:coffee_shop/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/styleText.dart';

class ListViewCafe extends StatefulWidget {
  const ListViewCafe({super.key});

  @override
  State<ListViewCafe> createState() => _ListViewCafeState();
}

class _ListViewCafeState extends State<ListViewCafe> {
  bool _likes = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        width: 350,
        height: 150,
        decoration: BoxDecoration(
          color: MyColors.purpleDeep,
          boxShadow: [
            BoxShadow(
                color: Colors.black87,
                blurRadius: 15,
                spreadRadius: 3,
                offset: Offset(0, 0))
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Image.asset(
                'assets/images/cafe1.png',
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                    child: Row(
                      children: [
                        Text(
                          'Capucino',
                          style: StyleText.subTitle,
                        ),
                        SizedBox(
                          width: 10,
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
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        'Alure Cafe                                ',
                        style: GoogleFonts.robotoSerif(
                            fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
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

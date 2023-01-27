import 'package:coffee_shop/utils/colors.dart';
import 'package:coffee_shop/utils/styleText.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Container(
            width: 500,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ))),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/coffeeMilk.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Coffee Milk',
                      style: GoogleFonts.robotoSerif(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 30),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_circle,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '2',
                            style: GoogleFonts.robotoSerif(
                                fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.remove_circle,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Text(
                      'Rp. 14.000',
                      style: GoogleFonts.robotoSerif(
                          fontSize: 14, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Text(
                        'Remove',
                        style: GoogleFonts.robotoSerif(
                            fontSize: 12,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          width: 500,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ))),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/oreoDrink.png'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Oreo Chocolate',
                    style: GoogleFonts.robotoSerif(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 30),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_circle,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '2',
                          style: GoogleFonts.robotoSerif(
                              fontSize: 14, color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.remove_circle,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Rp. 20.000',
                    style: GoogleFonts.robotoSerif(
                        fontSize: 14, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: Text(
                      'Remove',
                      style: GoogleFonts.robotoSerif(
                          fontSize: 12,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        child: Container(
          width: 150,
          height: 250,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF434343),
                  Color(0xFF1E1629),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.2, 0.9]),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/images/coffee.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            'Capucino',
                            style: GoogleFonts.robotoSerif(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    child: Row(
                      children: [
                        Text(
                          'With milk',
                          style: GoogleFonts.robotoSerif(
                            fontSize: 12,
                            color: Color(0xFFBFBFBF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.attach_money,
                              color: Color(0xFFECC026),
                            ),
                            Text(
                              '4.20',
                              style: GoogleFonts.robotoSerif(
                                  fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                        IconButton(
                          color: Color(0xFFECC026),
                          icon: Icon(Icons.add_circle),
                          onPressed: () {},
                          splashRadius: 5,
                        )
                      ],
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

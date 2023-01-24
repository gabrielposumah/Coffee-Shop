import 'package:coffee_shop/common/headerDrawer.dart';
import 'package:coffee_shop/common/listView.dart';
import 'package:coffee_shop/common/verticalListView.dart';
import 'package:coffee_shop/pages/signIn/signIn.dart';
import 'package:coffee_shop/pages/signUp/signUp.dart';
import 'package:coffee_shop/splash%20screen/splashScreen.dart';
import 'package:coffee_shop/utils/colors.dart';
import 'package:coffee_shop/utils/styleText.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List _post = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.purpleDeep,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Find the best\nCoffee for you",
                      style: StyleText.subTitle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 350,
                  height: 40,
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
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Best seller",
                      style: StyleText.subTitle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                      itemCount: _post.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return MyListView();
                      }),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Special For you",
                      style: StyleText.subTitle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                    itemCount: _post.length,
                    itemBuilder: (context, index) {
                      return VerticalListView();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

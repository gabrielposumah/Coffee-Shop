import 'package:coffee_shop/common/headerDrawer.dart';
import 'package:coffee_shop/pages/cart/cartPage.dart';
import 'package:coffee_shop/pages/favorite/favorite.dart';
import 'package:coffee_shop/pages/homePage/homePage.dart';
import 'package:coffee_shop/pages/listCafe/listCafe.dart';
import 'package:flutter/material.dart';

import '../../splash screen/splashScreen.dart';
import '../../utils/colors.dart';
import '../signIn/signIn.dart';
import '../signUp/signUp.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  List<Widget> widgetList = [
    MyHomePage(),
    FavoriteWidget(),
    ListCafe(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.purpleDeep,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://lh3.googleusercontent.com/a-/AAuE7mChgTiAe-N8ibcM3fB_qvGdl2vQ9jvjYv0iOOjB=s96-c'),
              ),
            ),
          ),
        ],
      ),
      drawer: HeaderDrawer(),
      body: widgetList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: MyColors.purpleLight,
        selectedItemColor: MyColors.orangeColor,
        unselectedItemColor: Colors.white.withOpacity(.60),
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee_maker_outlined),
            label: 'Cafe',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

import 'package:coffee_shop/common/listViewCafe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/listFavorite.dart';

class ListCafe extends StatefulWidget {
  const ListCafe({super.key});

  @override
  State<ListCafe> createState() => _ListCafeState();
}

class _ListCafeState extends State<ListCafe> {
  final controller = ScrollController();
  final double itemSize = 200;

  void onListenerController() {
    setState(() {});
  }

  @override
  void initState() {
    controller.addListener(() {
      onListenerController();
    });
  }

  @override
  void dispose() {
    controller.removeListener(onListenerController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
        height: 10,
      ),
      SizedBox(
        height: 550,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(vertical: 20),
          controller: controller,
          itemCount: 6,
          itemBuilder: (context, index) {
            final itemOffset = index * itemSize;
            final difference = controller.offset - itemOffset;
            final percent = 1 - difference / (itemSize / 2);
            double opacity = percent;
            double scale = percent;
            if (opacity > 1.0) opacity = 1.0;
            if (opacity < 0.0) opacity = 0.0;
            if (scale > 1.0) scale = 1.0;
            return Opacity(
                opacity: opacity,
                child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..scale(scale, 1.0),
                    child: ListViewCafe()));
          },
        ),
      )
    ]));
  }
}

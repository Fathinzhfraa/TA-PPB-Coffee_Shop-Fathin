import 'package:Coffee_Shop/page/favourite_page.dart';
import 'package:Coffee_Shop/page/main_page.dart';
import 'package:Coffee_Shop/page/profile.dart';
import 'package:flutter/material.dart';

class ButtonNavi extends StatefulWidget {
  @override
  State<ButtonNavi> createState() => _ButtonNaviState();
}

class _ButtonNaviState extends State<ButtonNavi> {
  int currentIndex = 0;
  final List<Widget> body = [MainPage(), favorite_page(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(158, 252, 105, 36),
              icon: Icon(Icons.home, color: Colors.black),
              label: "Home",
              activeIcon:
                  Icon(Icons.home, color: Color.fromARGB(158, 252, 105, 36))),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.black),
              label: "Favourite",
              activeIcon: Icon(Icons.favorite,
                  color: Color.fromARGB(158, 252, 105, 36))),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box, color: Colors.black),
              label: "About",
              activeIcon: Icon(Icons.account_box,
                  color: Color.fromARGB(158, 252, 105, 36))),
        ],
        unselectedItemColor: Colors.black,
        selectedItemColor: Color.fromARGB(158, 252, 105, 36),
      ),
    );
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}

import 'package:Coffee_Shop/model/model_iced.dart';
import 'package:Coffee_Shop/page/favourite_page.dart';
import 'package:Coffee_Shop/page/hotcoffee.dart';
import 'package:Coffee_Shop/page/icedcoffee.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 216, 201),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Expanded(
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => icedcoffee()));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/icedcoffee.png"),
                          height: 150,
                          width: 150,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "ICED COFFEE",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.all(10),
                child: Expanded(
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => hotcoffee()));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/hot.png"),
                          height: 150,
                          width: 150,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "HOT COFFEE",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

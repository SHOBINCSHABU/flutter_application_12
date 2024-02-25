import 'package:flutter/material.dart';
import 'package:flutter_application_12/view/screen_four.dart';
import 'package:flutter_application_12/view/screen_one.dart';
import 'package:flutter_application_12/view/screen_three.dart';
import 'package:flutter_application_12/view/screen_two.dart';

class BottonBar extends StatefulWidget {
  const BottonBar({super.key});

  @override
  State<BottonBar> createState() => _BottonBarState();
}

class _BottonBarState extends State<BottonBar> {
  int indexvalue = 0;
  List widgetist = [
    ScreenOne(),
    ScreenTwo(),
    ScreenThree(),
    ScreenFour(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: widgetist[indexvalue],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            indexvalue = index;
            setState(() {});
          },
          currentIndex: indexvalue,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule), label: "Schedule"),
            BottomNavigationBarItem(
                icon: Icon(Icons.sms_outlined), label: "Messeges"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: "Profile"),
          ],
        ));
  }
}

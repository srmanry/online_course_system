import 'package:flutter/material.dart';
import 'package:online_course/home_page_design.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int changeIndex = 0;
  final pages = [
    Homescreen(),
    Homescreen(),
    // Homescreen(),
    // Homescreen(),
    Homescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[changeIndex],
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedItemColor: Colors.green,
          currentIndex: changeIndex,
          onTap: (index) => setState(() {
                changeIndex = index;
              }),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              //backgroundColor: Colors.green[100],
              icon: Icon(
                Icons.person,
                //color: Colors.blue,
              ),
              label: "Profile",
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.green[100],
                icon: Icon(Icons.circle_outlined),
                label: "Home"),
            //BottomNavigationBarItem(icon: Icon(Icons.), label: "History"),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.reviews), label: "Analysics"),
            BottomNavigationBarItem(icon: Icon(Icons.help), label: "Help"),
            //BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          ]),
    );
  }
}

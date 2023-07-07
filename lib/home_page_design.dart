import 'dart:js';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/getsrart.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            color: Color(0xFFF368F8B),
            // color: Color.fromARGB(255, 243, 190, 182),

            // color: Color.fromARGB(255, 204, 144, 230),
            // color: Color(0xFFFFAD2CF),
            child: Stack(
              children: [
                Positioned(
                  top: 35,
                  left: 330,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Icon(
                      Icons.menu,
                      size: 35,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 8.0,
                  child: Text(
                    "Wellcome to ....\nFlutter learner",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                // Positioned(
                //     top: 60,
                //     left: 110,
                //     child: Image(
                //       image: AssetImage("assets/images/sa.png"),
                //       height: 200,
                //       fit: BoxFit.cover,
                //     )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 120,
                    child: slider(),
                  ),
                  Text(
                    'Our course',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                        height: 380,
                        decoration: BoxDecoration(
                            // color: Colors.white,
                            color: Color(0xFFFB4E2F1),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            catagory(),
                            SizedBox(
                              height: 10,
                            ),
                            getrow()
                          ],
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget catagory() {
  var courstitle = [
    "UI Diesign",
    "Dart Programming",
    "Apps Development(Flutter)",
    "Flutter Backend",
  ];

  return Container(
    height: 300,
    child: ListView.builder(
        padding: EdgeInsets.zero,

        //scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        itemCount: courstitle.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 10,
              //bottom: 8,
              left: 8,
              right: 8,
            ),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 243, 245, 247),
                      blurRadius: 3,
                      //spreadRadius: 1.0,
                    )
                  ],
                  color: const Color.fromARGB(255, 235, 242, 247),
                  //color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              height: 50,
              child: Center(
                child: Text(
                  courstitle[index],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          );
        }),
  );
}

getrow() {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Center(
              child: Text(
            'Techers',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
        Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Center(
              child: Text(
            'Students',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
        InkWell(
          onTap: () {
            Get.to(Getstart());
          },
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Center(
                child: Text(
              'Get start',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
      ],
    ),
  );
}

Catagory() {
  return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      //scrollDirection: Axis.horizontal,
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 5, crossAxisCount: 2, mainAxisSpacing: 5),
      itemBuilder: (_, index) {
        return Container(
          height: 100,
          color: Colors.green[100],
          //width: 100,
        );
      });
}

slider() {
  List slidrcolor = [
    Colors.amber,
    Colors.green,
    Colors.red,
  ];
  return Container(
    height: 50,
    child: CarouselSlider.builder(
      carouselController: CarouselController(),
      itemCount: slidrcolor.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            //  height: 200,
            // width: 600,

            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(10)),
            child: Center(
                //child: Text("jajfdjj"),
                ),
          ),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        //enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 2.0,
        initialPage: 2,
      ),
    ),
  );
}

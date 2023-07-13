import 'dart:js';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:online_course/home_page_design.dart';
import 'package:online_course/screens/login.dart';

import 'home_page.dart';

void main() => runApp(DevicePreview(builder: (context) => Course()));

class Course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      // theme: ThemeData.light(),
      //darkTheme: ThemeData.dark(),
      home: Loginscreen(),
      //home: Homepage(),
    );
  }
}

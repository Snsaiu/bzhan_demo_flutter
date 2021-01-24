import 'package:bzhan_demo/bll/add_bll.dart';
import 'package:bzhan_demo/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'b zhan',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: ScreenUtilInit(
          designSize: Size(360, 690),
          allowFontScaling: false,
          child: HomePage(),
        ));
  }
}

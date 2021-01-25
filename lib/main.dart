import 'package:bzhan_demo/bll/add_bll.dart';
import 'package:bzhan_demo/home/home_page.dart';
import 'package:bzhan_demo/router/application.dart';
import 'package:bzhan_demo/router/router_configure.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:fluro/fluro.dart';

void main() {
  final router = FluroRouter();
  RouterConfigure.configureRoutes(router);
  Application.router = router;
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => AddBll())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: Application.router.generator,
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

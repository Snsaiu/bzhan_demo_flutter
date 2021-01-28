import 'dart:ffi';

import 'package:bzhan_demo/router/router_handler.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

class RouterConfigure {
  static String detail = "/detail";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });

    router.define(detail, handler: detailHandler);
  }
}

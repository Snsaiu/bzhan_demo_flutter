import 'package:bzhan_demo/pages/detail.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

var detailHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String p1 = params["info"].first;
  return Detail(info: p1);
});

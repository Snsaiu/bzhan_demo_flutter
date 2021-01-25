import 'package:bzhan_demo/router/application.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:bzhan_demo/bll/add_bll.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      child: Column(
        children: [
          Text("${context.watch<AddBll>().count}"),
          RaisedButton(
            onPressed: () {
              context.read<AddBll>().increment();
            },
            child: Text("click"),
          ),
          RaisedButton(
            onPressed: () {
              Application.router
                  .navigateTo(context, "/detail?info=hello world");
            },
            child: Text("jump"),
          )
        ],
      ),
    ));
  }
}

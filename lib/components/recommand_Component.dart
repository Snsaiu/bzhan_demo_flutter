import 'package:flutter/material.dart';

class RecommandComponent extends StatelessWidget {
  const RecommandComponent({Key key}) : super(key: key);

  Widget _getTitleWidget() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
              alignment: Alignment(-0.9, 1),
              child: Text("商品推荐", style: TextStyle(color: Colors.red)))
        ],
      ),
    );
  }
}

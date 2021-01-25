import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String _info;

  const Detail({Key key, @required String info})
      : this._info = info,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this._info),
    );
  }
}

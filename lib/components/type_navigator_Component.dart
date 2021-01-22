import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TypeNavigatorComponent extends StatelessWidget {
  final List<Map<String, String>> _navigators;

  const TypeNavigatorComponent({Key key, List<Map> navigators})
      : this._navigators = navigators,
        super(key: key);

  List<Widget> _getChildren() {
    List<Widget> _res = [];
    for (var i = 0; i < this._navigators.length; i++) {
      InkWell c = InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(this._navigators[i].values.first),
              height: ScreenUtil().setHeight(30),
            ),
            Text(
              this._navigators[i].keys.first,
              textScaleFactor: 0.7,
            )
          ],
        ),
        onTap: () {},
      );
      _res.add(c);
    }
    return _res;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1.5,
        children: this._getChildren());
  }
}

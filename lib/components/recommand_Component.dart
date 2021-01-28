import 'package:bzhan_demo/vo/recommand_vo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommandComponent extends StatelessWidget {
  final List<RecommandVo> _list;

  const RecommandComponent({Key key, List<RecommandVo> list})
      : this._list = list,
        super(key: key);

  Widget _getItem(RecommandVo item) {
    return Container(
      child: Column(
        children: [
          Image(
            image: AssetImage(item.image),
            width: ScreenUtil().setWidth(80),
          ),
          Text(item.name),
          Text(item.price),
          Text(item.oldprice)
        ],
      ),
    );
  }

  Widget _getTitleWidget() {
    return Align(
        child: Container(
      width: ScreenUtil().setWidth(690),
      padding: EdgeInsets.only(top: 10, bottom: 2),
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Text(
        "商品推荐",
        style: TextStyle(color: Colors.red[200]),
      ),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12))),
    ));
  }

  Widget _getList() {
    return Container(
      height: ScreenUtil().setHeight(150),
      child: ListView.builder(
        itemCount: this._list.length,
        itemBuilder: (BuildContext context, int index) {
          return this._getItem(this._list[index]);
        },
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(5),
        itemExtent: 100,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [this._getTitleWidget(), this._getList()],
      ),
    );
  }
}

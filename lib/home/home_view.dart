import 'package:bzhan_demo/components/my_flutter_swiper.dart';
import 'package:bzhan_demo/components/recommand_Component.dart';
import 'package:bzhan_demo/components/type_navigator_Component.dart';
import 'package:bzhan_demo/vo/recommand_vo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
  List<Image> _images = [];

  List<Map<String, String>> _navaigator = List<Map<String, String>>();

  List<RecommandVo> _recommandList = [];

  HomeView() {
    this._images.add(Image.asset("assets/avtor.jpg", fit: BoxFit.fill));
    this._images.add(Image.asset("assets/avtor.jpg", fit: BoxFit.fill));
    this._images.add(Image.asset("assets/avtor.jpg", fit: BoxFit.fill));
    this._images.add(Image.asset("assets/avtor.jpg", fit: BoxFit.fill));
    print("load images");

    this._navaigator.add({"测试1": "assets/avtor.jpg"});
    this._navaigator.add({"测试2": "assets/avtor.jpg"});
    this._navaigator.add({"测试3": "assets/avtor.jpg"});
    this._navaigator.add({"测试4": "assets/avtor.jpg"});
    this._navaigator.add({"测试5": "assets/avtor.jpg"});
    this._navaigator.add({"测试6": "assets/avtor.jpg"});
    this._navaigator.add({"测试7": "assets/avtor.jpg"});
    this._navaigator.add({"测试8": "assets/avtor.jpg"});

    this._recommandList.add(new RecommandVo.rig(
        name: "测试1",
        price: "￥100",
        oldPrice: "￥150",
        image: "assets/avtor.jpg"));
    this._recommandList.add(new RecommandVo.rig(
        name: "测试3",
        price: "￥100",
        oldPrice: "￥150",
        image: "assets/avtor.jpg"));
    this._recommandList.add(new RecommandVo.rig(
        name: "测试4",
        price: "￥100",
        oldPrice: "￥150",
        image: "assets/avtor.jpg"));
    this._recommandList.add(new RecommandVo.rig(
        name: "测试6",
        price: "￥100",
        oldPrice: "￥150",
        image: "assets/avtor.jpg"));
    this._recommandList.add(new RecommandVo.rig(
        name: "测试5",
        price: "￥100",
        oldPrice: "￥150",
        image: "assets/avtor.jpg"));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
            child: Column(
      children: [
        Container(
          width: 690,
          height: 200,
          child: MyFlutterSwiper(images: this._images),
        ),
        Container(
          height: ScreenUtil().setHeight(120),
          width: ScreenUtil().setWidth(690),
          child: TypeNavigatorComponent(
            navigators: this._navaigator,
          ),
        ),
        Container(
          height: ScreenUtil().setHeight(80),
          width: ScreenUtil().setWidth(690),
          child: Image.asset("assets/adv.jpg", fit: BoxFit.fitWidth),
        ),
        Container(
            margin: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
            height: ScreenUtil().setHeight(60),
            width: ScreenUtil().setWidth(690),
            child: InkWell(
              child: Image.asset("assets/phone.png", fit: BoxFit.fitWidth),
              onTap: () {
                // launch("tel:15952035975");
              },
            )),
        Container(
<<<<<<< HEAD
          margin: EdgeInsets.only(top: ScreenUtil().setHeight(20)),
          child: RecommandComponent(list: this._recommandList),
          height: ScreenUtil().setHeight(200),
=======
          child: RecommandComponent(),
          height: ScreenUtil().setHeight(300),
>>>>>>> 2567d7811bb7499674ab7acf658e0187cd6cc89c
          width: ScreenUtil().setWidth(690),
        )
      ],
    )));
  }
}

import 'package:meta/meta.dart';

class RecommandVo {
  RecommandVo.rig({String name, String price, String oldPrice, String image})
      : this._name = name,
        this._price = price,
        this._oldprice = oldPrice,
        this._image = image;

  String _name;

  String get name => _name;

  set name(String name) {
    _name = name;
  }

  String _image;

  String get image => _image;

  set image(String image) {
    _image = image;
  }

  String _price;

  String get price => _price;

  set price(String price) {
    _price = price;
  }

  String _oldprice;
  String get oldprice => _oldprice;

  set oldprice(String value) => _oldprice = value;
}

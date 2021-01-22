import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MyFlutterSwiper extends StatelessWidget {
  final List<Image> _images;

  const MyFlutterSwiper({Key key, List<Image> images})
      : this._images = images,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (context, index) {
        return this._images[index];
      },
      itemCount: this._images.length,
      pagination: new SwiperPagination(),
      autoplay: true,
      onTap: (index) {
        print(index);
      },
    );
  }
}

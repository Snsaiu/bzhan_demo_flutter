import 'dart:convert';

class CategoryModel {
  String name;
  String image;
  CategoryModel({
    this.name,
    this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    var categoryModel = CategoryModel(
      name: map['name'],
      image: map['image'],
    );
    return categoryModel;
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) => CategoryModel.fromMap(json.decode(source));
}

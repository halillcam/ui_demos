import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({required this.name, required this.iconPath, required this.boxColor});

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: 'Salad', iconPath: "assets/images/salad.jpg", boxColor: Color(0xff92A3FD)));

    categories.add(CategoryModel(
        name: "Cake", iconPath: "assets/images/cake.jpg", boxColor: Color(0xffC58BF2)));

    categories.add(
        CategoryModel(name: "Pie", iconPath: "assets/images/pie.png", boxColor: Color(0xff92A3FD)));

    categories.add(CategoryModel(
        name: "Smoothie", iconPath: "assets/iamges/smoothie.png", boxColor: Color(0xff92A3FD)));
    return categories;
  }
}

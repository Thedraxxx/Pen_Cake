import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  Color boxcolor;

  CategoryModel({required this.name, required this.boxcolor});

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(name: 'Salad', boxcolor: Color(0xff92A3FD)));
    categories.add(CategoryModel(name: 'Cake', boxcolor: Color(0xffC58BF2)));
    categories.add(CategoryModel(name: 'Burger', boxcolor: Color(0xff92A3FD)));
    categories.add(CategoryModel(name: 'Pizza', boxcolor: Color(0xffC58BF2)));

    return categories;
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DietModel
{
  String name;
  Color boxColor;
  String label;
  String duration;
  String calorie;
  bool viewIsSelected;

  DietModel({    required this.name,
    required this.boxColor,
    required this.label,
    required this.duration,
    required this.calorie,
    required this.viewIsSelected,
  }
  );
   static List<DietModel> getdiet(){
    List<DietModel> diets =[];

    diets.add(DietModel(name: 'Penut Butter', boxColor: Color(0xff92A3FD), label: 'easy', duration: 'two days', calorie: '150 caloris',viewIsSelected: true));
    diets.add(DietModel(name: 'Penut Butter', boxColor: Color(0xffC58BF2), label: 'easy', duration: 'two days', calorie: '150 caloris',viewIsSelected: true));
    diets.add(DietModel(name: 'Penut Butter', boxColor: Color(0xff92A3FD), label: 'easy', duration: 'two days', calorie: '150 caloris',viewIsSelected: true));
    diets.add(DietModel(name: 'Penut Butter', boxColor: Color(0xffC58BF2), label: 'easy', duration: 'two days', calorie: '150 caloris',viewIsSelected: true));
 return diets;
 
  }
}
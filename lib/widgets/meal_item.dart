import '../models/meal.dart';
import 'package:flutter/material.dart';

class MealItem extends StatelessWidget{
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({this.title, this.imageUrl, this.duration, this.complexity, this.affordability,});

  void selectMail(){}

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: selectMail,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.network(this.imageUrl),
            ),
          ],
        ),
      ),
    );
  }
}
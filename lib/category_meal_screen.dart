import 'package:flutter/material.dart';
import './models/meal.dart';
import 'dummy_categories.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryID;
  // final String categoryTitle;

  // CategoryMealScreen(this.categoryID, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgumnets =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgumnets['id'];
    final categoryTitle = routeArgumnets['title'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle,
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Text(categoryMeals[index].title);
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}

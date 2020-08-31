import 'package:flutter/material.dart';

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

    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle,
        ),
      ),
      body: Center(
        child: Text('The recipes for the category'),
      ),
    );
  }
}

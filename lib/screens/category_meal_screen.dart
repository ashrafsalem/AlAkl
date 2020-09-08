import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class CategoryMealScreen extends StatefulWidget {
  static const routeName = '/category-meals';

  final List<Meal> _availableMeals;

  CategoryMealScreen(this._availableMeals);


  @override
  _CategoryMealScreenState createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {


  String categoryTitle;
  List<Meal> displayMeals;
  var _isChanged = false;



  @override
  void didChangeDependencies() {
    if(!_isChanged){
      final routeArgumnets =
      ModalRoute.of(context).settings.arguments as Map<String, String>;
      final categoryId = routeArgumnets['id'];
      categoryTitle= routeArgumnets['title'];
      displayMeals = this.widget._availableMeals.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      _isChanged = true;
    }
    super.didChangeDependencies();
  }

  void _removeMeal(String mealId){
    setState(() {
      displayMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle,
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: displayMeals[index].id ,
              title: displayMeals[index].title,
              imageUrl: displayMeals[index].imageUrl,
              duration: displayMeals[index].duration,
              complexity: displayMeals[index].complexity,
              affordability: displayMeals[index].affordability,
              removeItem: _removeMeal,);
          },
          itemCount: displayMeals.length,
        ),
      ),
    );
  }
}

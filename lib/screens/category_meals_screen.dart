import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/data/dummy_data.dart';
import 'package:flutter_complete_guide/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final routeTitle = routeArgs['title'];
    final routeId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(routeId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(routeTitle),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemBuilder: (ctx, index) {
          return MealItem(
            title: categoryMeals[index].title,
            imgUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final routeTitle = routeArgs['title'];
    final routeId = routeArgs['id'];

    return Scaffold(
      appBar: AppBar(
        title: Text(routeTitle),
      ),
      body: Center(
        child: Text('The recipes'),
      ),
    );
  }
}

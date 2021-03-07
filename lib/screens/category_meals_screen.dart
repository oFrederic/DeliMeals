import 'package:deli_meals/widgets/meal_item.dart';
import 'package:flutter/material.dart';

import '../data/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // CategoryMealsScreen(this.id, this.title);
  // final String id;
  // final String title;

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    final title = routeArgs['title'];
    final meals =
        DUMMY_MEALS.where((meal) => meal.categories.contains(id)).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
              title: meals[index].title,
              imageUrl: meals[index].imageUrl,
              duration: meals[index].duration,
              complexity: meals[index].complexity,
              affordability: meals[index].affordability);
        },
        itemCount: meals.length,
      ),
    );
  }
}

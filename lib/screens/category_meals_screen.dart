import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  // CategoryMealsScreen(this.id, this.title);
  // final String id;
  // final String title;

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    final title = routeArgs['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Center(
        child: Text('The Recipes for The Category!'),
      ),
    );
  }
}

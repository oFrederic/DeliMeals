import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The Recipes',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Center(
        child: Text('The Recipes for The Category!'),
      ),
    );
  }
}

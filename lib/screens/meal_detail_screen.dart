import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$id',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: Center(
        child: Text('$id'),
      ),
    );
  }
}

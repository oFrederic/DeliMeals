import 'package:deli_meals/screens/favorites_screen.dart';
import 'package:flutter/material.dart';
import 'categories_screen.dart';

class TabsUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "DeliMeals",
            style: Theme.of(context).textTheme.headline6,
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Categories'),
              Tab(text: 'Favorites'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoriesScreen(),
            FavoritesScreen(),
          ],
        ),
      ),
    );
  }
}

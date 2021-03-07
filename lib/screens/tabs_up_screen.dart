import 'package:flutter/material.dart';

import '../models/meal.dart';
import './favorites_screen.dart';
import '../widgets/main_drawer.dart';
import './categories_screen.dart';

class TabsUpScreen extends StatelessWidget {
  TabsUpScreen(this.favoriteMeals);
  final List<Meal> favoriteMeals;

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
        drawer: MainDrawer(),
        body: TabBarView(
          children: [
            CategoriesScreen(),
            FavoritesScreen(favoriteMeals),
          ],
        ),
      ),
    );
  }
}

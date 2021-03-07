import 'package:deli_meals/screens/favorites_screen.dart';
import 'package:flutter/material.dart';
import 'categories_screen.dart';

class TabsBottomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Meals"),
        ),
        body: TabBarView(
          children: <Widget>[CategoriesScreen(), FavoritesScreen()],
        ),
        bottomNavigationBar: Container(
          color: Theme.of(context).primaryColor,
          child: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'favorites',
              )
            ],
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
          ),
        ),
      ),
    );
  }
}

import 'package:delimeals/screens/category_meals_screen.dart';
import 'package:delimeals/screens/filters_screen.dart';
import 'package:delimeals/screens/meal_detail_screen.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListTile(String title, IconData icon, String route, ctx) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      onTap: () => Future.delayed(Duration.zero, () {
        Navigator.of(ctx).pushReplacementNamed(route);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text('Cooking Up!',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Theme.of(context).primaryColor,
                    fontSize: 30)),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Meals', Icons.restaurant, '/', context),
          buildListTile(
              'Filters', Icons.settings, FiltersScreen.routeName, context)
        ],
      ),
    ));
  }
}

import 'package:delimeals/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegeterian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your Meal selection.',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                    title: Text('Gluten Free'),
                    value: _glutenFree,
                    activeColor: Colors.pink,
                    subtitle: Text('Only include gluten-free meals.'),
                    onChanged: (newValue) {
                      setState(() {
                        _glutenFree = newValue;
                      });
                    }),
                SwitchListTile(
                    title: Text('Lactose-free'),
                    value: _lactoseFree,
                    activeColor: Colors.pink,
                    subtitle: Text('Only include lactose-free meals.'),
                    onChanged: (newValue) {
                      setState(() {
                        _lactoseFree = newValue;
                      });
                    }),
                SwitchListTile(
                    title: Text('Vegetarian'),
                    value: _vegeterian,
                    activeColor: Colors.pink,
                    subtitle: Text('Only include vegetarian meals.'),
                    onChanged: (newValue) {
                      setState(() {
                        _vegeterian = newValue;
                      });
                    }),
                SwitchListTile(
                    title: Text('Vegan'),
                    value: _vegan,
                    activeColor: Colors.pink,
                    subtitle: Text('Only include vegan meals.'),
                    onChanged: (newValue) {
                      setState(() {
                        _vegan = newValue;
                      });
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}

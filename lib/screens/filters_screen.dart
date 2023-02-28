import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key key}) : super(key: key);
  static const routeName = '/filters';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget buildSwitchTile(
    String title,
    String subTitle,
    Function updateValue,
    bool currentValue,
  ) {
    return SwitchListTile(
      value: currentValue,
      onChanged: updateValue,
      title: Text(title),
      subtitle: Text(subTitle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Your Filters'),
        ),
        drawer: MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust your meal selection',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  buildSwitchTile(
                    'Gluten Free',
                    'Only include Gluten Free meals. ',
                    (value) {
                      setState(() {
                        _glutenFree = value;
                      });
                    },
                    _glutenFree,
                  ),
                  buildSwitchTile(
                    'Lactose Free',
                    'Only include Lactose Free meals. ',
                    (value) {
                      setState(() {
                        _lactoseFree = value;
                      });
                    },
                    _lactoseFree,
                  ),
                  buildSwitchTile(
                    'Vegan ',
                    'Only include Vegan meals. ',
                    (value) {
                      setState(() {
                        _vegan = value;
                      });
                    },
                    _vegan,
                  ),
                  buildSwitchTile(
                    'Vegetarian',
                    'Only include Vegetarian meals. ',
                    (value) {
                      setState(() {
                        _vegan = value;
                      });
                    },
                    _vegan,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

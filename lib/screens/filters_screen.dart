import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  final Function savedFilters;
  final Map<String, bool> currentFilters;
  FiltersScreen(this.currentFilters, this.savedFilters);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  @override
  void initState() {
    _glutenFree = widget.currentFilters['gluten'];
    _lactoseFree = widget.currentFilters['lactose'];
    _vegan = widget.currentFilters['vegan'];
    _vegetarian = widget.currentFilters['vegetarian'];
    super.initState();
  }

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
          actions: [
            IconButton(
              onPressed: () {
                final selectedFilters = {
                  'gluten': _glutenFree,
                  'lactose': _lactoseFree,
                  'vegan': _vegan,
                  'vegetarian': _vegetarian,
                };
                widget.savedFilters(selectedFilters);
              },
              icon: Icon(Icons.save),
            ),
          ],
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
                        _vegetarian = value;
                      });
                    },
                    _vegetarian,
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

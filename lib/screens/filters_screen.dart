import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({Key key}) : super(key: key);
  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Your Filters'),
        ),
        drawer: MainDrawer(),
        body: Text('filters'),
      ),
    );
  }
}

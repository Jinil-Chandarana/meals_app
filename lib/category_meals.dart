import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;
  CategoryMealScreen({this.categoryId, this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}

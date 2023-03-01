import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../models/meals.dart';

class FavScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  FavScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('You have no favourites yet!'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeals[index].id,
            affordability: favoriteMeals[index].affordability,
            complexity: favoriteMeals[index].complexity,
            duration: favoriteMeals[index].duration,
            imgUrl: favoriteMeals[index].imageUrl,
            title: favoriteMeals[index].title,
          );
        },
      );
    }
  }
}

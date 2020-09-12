import 'package:flutter/material.dart';
import 'package:meels/models/meal.dart';

import '../widgets/meal_item.dart';
// import '../dummy-data/meals.dart';

class CategoriesMeals extends StatelessWidget {
  static const route = '/category-meals';

  final List<Meal> availableMeals;

  const CategoriesMeals(this.availableMeals);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = availableMeals
        .where((meal) => meal.categories.contains(categoryId))
        .toList();
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('$categoryTitle Meals'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              id: categoryMeals[index].id,
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              affordability: categoryMeals[index].affordability,
              complexity: categoryMeals[index].complexity,
            );
          },
          itemCount: categoryMeals.length,
        ));
  }
}

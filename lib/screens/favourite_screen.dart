import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavouriteScreen extends StatelessWidget {
  final List<Meal> favourites;

  FavouriteScreen(this.favourites);
  @override
  Widget build(BuildContext context) {
    if (favourites.isEmpty) {
      return Center(
        child: Text('You have no Favoutites, Add Some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: favourites[index].id,
            title: favourites[index].title,
            imageUrl: favourites[index].imageUrl,
            duration: favourites[index].duration,
            affordability: favourites[index].affordability,
            complexity: favourites[index].complexity,
          );
        },
        itemCount: favourites.length,
      );
    }
  }
}

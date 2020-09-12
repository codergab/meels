import 'package:flutter/material.dart';

import '../dummy-data/categories.dart';
import 'package:meels/models/category_item.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(10),
      child: GridView(
        children: DUMMY_CATEGORIES
            .map((dummyCategory) => CategoryItem(
                  id: dummyCategory.id,
                  title: dummyCategory.title,
                  color: dummyCategory.color,
                ))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      ),
    );
  }
}

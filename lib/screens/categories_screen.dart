import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/screens/meals_screen.dart';
import 'package:meals_app/widgets/category_grid_item.dart';
//import 'package:meals_app/models/category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectedCategory(
    BuildContext context,
    CategorY categorY,
  ) {
    final filteredMeals = dummyMeals
        .where(
          (meal) => meal.categories.contains(
            categorY.id,
          ),
        )
        .toList();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: ((ctx) => MealsScreen(
              meals: filteredMeals,
              title: categorY.title,
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pick your category',
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          // availableCategories.map((category) => CategoryGridItem(categorY: categorY),).toList(),
          for (final categorY in availableCategories)
            CategoryGridItem(
              categorY: categorY,
              onSelectedCategory: () {
                _selectedCategory(context, categorY);
              },
            ),
        ],
      ),
    );
  }
}

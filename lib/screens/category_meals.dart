import 'package:flutter/material.dart';
import 'package:meals_nav/data/dummy_data.dart';
import 'package:meals_nav/models/meal.dart';
import 'package:meals_nav/screens/meal_detail.dart';
import 'package:meals_nav/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  final List<Meal> meals;
  final String? title;

  const CategoryMealsScreen({super.key, this.title, required this.meals});

  void _selectMeal(BuildContext context, Meal meal) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (ctx) => MealDetailScreen(meal: meal)));
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh ... nothing here!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Try selecting a different category!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );

    if (dummyMeals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemExtent: 200,
        itemBuilder: (ctx, index) => MealItem(
          meal: meals[index],
          onSelectMeal: (meal) {
            _selectMeal(context, meal);
          },
        ),
      );
    }

    if (title == null) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(title: Text(title!)),
      body: content,
    );
  }
}

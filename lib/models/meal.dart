enum Complexity { simple, medium, challenging, hard }

enum Affordability { affordable, pricey, luxurious }

class Meal {
  Meal({
    required this.id,
    required this.title,
    required this.affordability,
    required this.complexity,
    required this.imageUrl,
    required this.isGlutenFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.isLactoseFree,
    this.duration = 15,
    this.categories = List<String>,
    this.ingredients = List<String>,
    this.steps = List<String>,
  });

  final String id;
  final categories;
  final String title;
  final affordability;
  final Complexity complexity;
  final String imageUrl;
  final int duration;
  var ingredients;
  var steps;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;
}

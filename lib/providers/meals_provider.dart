import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_nav/data/dummy_data.dart';

final mealsProvider = Provider((ref) {
  return dummyMeals;
});

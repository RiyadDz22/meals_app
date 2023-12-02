import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class FavoritMealsNotifier extends StateNotifier<List<Meal>> {
  FavoritMealsNotifier() : super([]);
  bool toggelMealFavoritesStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);
    if (mealIsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favoritMealsProvider =
    StateNotifierProvider<FavoritMealsNotifier, List<Meal>>((ref) {
  return FavoritMealsNotifier();
});

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/data/data.dart';

final mealsProvider = Provider((ref) {
  return dummyMeals;
});

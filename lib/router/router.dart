import 'package:flutter/material.dart';

import '../category_meals_screen.dart';
import '../page404.dart';
import 'path.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RoutePath.categoryMealsScreen:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) =>  CategoryMealsScreen(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const PageNotFound(),
      );
  }
}

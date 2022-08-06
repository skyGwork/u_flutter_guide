import 'package:flutter/material.dart';

import 'models/categorymeal_args.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as CategoryMealsScreenArgs;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.categoryTitle),
      ),
      body: const Center(
        child: Text(
          'The Recipes For The Category!',
        ),
      ),
    );
  }
}

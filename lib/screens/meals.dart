import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.title,
    required this.meals,
  });

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget mealsBody = ListView.builder(
      itemCount: meals.length,
        itemBuilder: (ctx, index) => Text(meals[index].title),
      );

    if(meals.isEmpty) {
      mealsBody = const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text('No meals yet')],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(),
      body: mealsBody,
    );
  }
}
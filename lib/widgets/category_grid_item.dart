import 'package:flutter/material.dart';
import 'package:meals_app/model/category_model.dart';

// ignore: must_be_immutable
class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(
      {super.key, required this.category, required this.onSelectMeal});

  final void Function() onSelectMeal;
  final Category category;

  @override
  Widget build(context) {
    return InkWell(
      onTap: onSelectMeal,
      splashColor: Theme.of(context).colorScheme.background,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(colors: [
            category.color.withOpacity(0.55),
            category.color.withOpacity(0.9),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/providers/favorites_provider.dart';
import 'package:meal_app/providers/meals_provider.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/filters_screen.dart';
import 'package:meal_app/screens/meals_screen.dart';
import 'package:meal_app/widgets/main_drawer.dart';
import "package:meal_app/providers/filters_provider.dart";


class TabScreen extends ConsumerStatefulWidget {
  const TabScreen({super.key});

  @override
  ConsumerState<TabScreen> createState() {
    return _TabScreenState();
  }
}

class _TabScreenState extends ConsumerState<TabScreen> {
  int currentIndex = 0;

  void changeIndex(int idx) {
    setState(() {
      currentIndex = idx;
    });
  }


  void _setScreen(String identifier) async {
    Navigator.pop(context);
    if (identifier == "filters") {
      await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (ctx) {
            return FiltersScreen();
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final meals = ref.watch(mealsProvider);
    final activeFilters = ref.watch(filtersProvider);
    final availableMeals = meals.where((meal) {
      if (activeFilters[Filter.hard]! &&
          meal.complexity != Complexity.hard) {
        return false;
      }
      if (activeFilters[Filter.simple]! &&
          meal.complexity != Complexity.simple) {
        return false;
      }
      if (activeFilters[Filter.challenging]! &&
          meal.complexity != Complexity.challenging) {
        return false;
      }
      if (activeFilters[Filter.vegetarian]! && !meal.isVegetarian) {
        return false;
      }
      return true;
    }).toList();

    String currentScreenTitle = 'Categories';
    Widget content = CategoriesScreen(
      availableMeals: availableMeals,
    );

    if (currentIndex == 1) {
      final favoriteMeals = ref.watch(favoriteMealsProvider);
      currentScreenTitle = 'Favorites';
      content = MealsScreen(
        meals: favoriteMeals,
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(currentScreenTitle)),
      drawer: MainDrawer(setScreen: _setScreen),
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorites",
          ),
        ],
        currentIndex: currentIndex,
      ),
      body: content,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meal_app/data/dummy_data.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/filters_screen.dart';
import 'package:meal_app/screens/meals_screen.dart';
import 'package:meal_app/widgets/main_drawer.dart';

Map<Filter,bool> kInitialFilters = {
  Filter.simple : false,
  Filter.challenging : false,
  Filter.hard : false,
  Filter.vegetarian : false
};

class TabScreen extends StatefulWidget{
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() {
    return _TabScreenState();
  }

}

class _TabScreenState extends State<TabScreen>{

  int currentIndex = 0;
  final List<Meal> _favoriteMeals = [];
  Map<Filter,bool> _selectedFilters = kInitialFilters;

  void changeIndex(int idx){
    setState(() {
      currentIndex = idx;
    });
  }

  void showInfoMessgae(String msg){
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  void _toggleFavorites(Meal meal){
    if(_favoriteMeals.contains(meal)){
      setState(() {
        _favoriteMeals.remove(meal);
        showInfoMessgae('This meal is no longer fav.');
      });
    }
    else{
      _favoriteMeals.add(meal);
      showInfoMessgae('This meal is added to fav.');
    }
  }

  void _setScreen(String identifier) async{
    Navigator.pop(context);
    if(identifier == "filters"){
      var result = await Navigator.of(context).push<Map<Filter,bool>>(
        MaterialPageRoute(builder: (ctx){
          return FiltersScreen(currentFilters: _selectedFilters,);
      }
      ));

      setState(() {
        _selectedFilters = result ?? kInitialFilters;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    final availableMeals = dummyMeals.where((meal) {
      if (_selectedFilters[Filter.hard]! && meal.complexity != Complexity.hard) {
        return false;
      }
      if (_selectedFilters[Filter.simple]! && meal.complexity != Complexity.simple) {
        return false;
      }
      if (_selectedFilters[Filter.challenging]! && meal.complexity != Complexity.challenging) {
        return false;
      }
      if (_selectedFilters[Filter.vegetarian]! && !meal.isVegetarian) {
        return false;
      }
      return true;
    }).toList();

    String currentScreenTitle = 'Categories';
    Widget content = CategoriesScreen(toggleFavourite: _toggleFavorites,availableMeals: availableMeals,);

    if(currentIndex == 1){
      currentScreenTitle = 'Favorites';
      content = MealsScreen(meals: _favoriteMeals,toggleFavourite: _toggleFavorites,);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(currentScreenTitle),
      ),
      drawer: MainDrawer(setScreen: _setScreen,),
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeIndex,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.category_outlined),label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: "Favorites"),
        ],
        currentIndex: currentIndex,
      ),
      body: content,
    );
  }
}
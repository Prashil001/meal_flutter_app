import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/filters_screen.dart';
import 'package:meal_app/screens/meals_screen.dart';
import 'package:meal_app/widgets/main_drawer.dart';

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

  void _setScreen(String identifier){
    Navigator.pop(context);
    if(identifier == "filters"){
      Navigator.push(context, MaterialPageRoute(builder: (ctx){
        return FiltersScreen();
      }));
    }
  }

  @override
  Widget build(BuildContext context) {

    String currentScreenTitle = 'Categories';
    Widget content = CategoriesScreen(toggleFavourite: _toggleFavorites,);

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
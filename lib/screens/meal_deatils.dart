import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';

class MealdetailsScreen extends StatelessWidget{
  const MealdetailsScreen({super.key,required this.meal, required this.toggleFavourite});

  final Meal meal;
  final void Function(Meal meal) toggleFavourite; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: <Widget>[
          IconButton(onPressed: (){
            toggleFavourite(meal);
          }, icon: Icon(Icons.star))
        ],
      ),
      body: Column(
        children: [
          FadeInImage(
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl)
          ),
        ],
      ),
    );
  }
}
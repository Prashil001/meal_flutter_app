import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/widgets/mealItemProperty.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal, required this.onSelectMeal});

  final Meal meal;
  final void Function() onSelectMeal;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(6),
      ),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onSelectMeal,
        splashColor: Theme.of(context).primaryColor,
        child: Stack(
          children: [
            FadeInImage(
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl)
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: Colors.black54,
                padding: EdgeInsets.symmetric(vertical: 4,horizontal: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      meal.title,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.white
                      ),
                    ),
                    SizedBox(height: 4,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MealItemproperty(icon: Icons.timer, label: '${meal.duration} min'),
                        SizedBox(width: 10,),
                        MealItemproperty(icon: Icons.attach_money, label: meal.affordability.name),
                        SizedBox(width: 10,),
                        MealItemproperty(icon: Icons.work, label: meal.complexity.name)

                      ],
                    )
                  ],
                ),
                
              )
            )
          ],
        ),
      ),
    );
  }
}

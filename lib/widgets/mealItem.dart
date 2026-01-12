import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';

class Mealitem extends StatelessWidget {
  const Mealitem({super.key, required this.meal});

  final Meal meal;

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
        onTap: (){},
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

import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget{
  const MainDrawer({super.key,required this.setScreen});

  final void Function(String identifier) setScreen;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsetsGeometry.all(8),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black,Colors.black87,Colors.black45,Colors.black26,Colors.black12],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              )
            ),
            child: ListTile(
              title: Text(
                "Prepare your food now!!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              leading: Icon(Icons.food_bank,size: 40,),
            )
          ),
          ListTile(
            title: Text("Meals",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),),
            leading: Icon(Icons.fastfood_sharp),
            onTap: (){
              setScreen('meals');
            },
          ),
          ListTile(
            title: Text("Filters",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),),
            leading: Icon(Icons.filter_alt),
            onTap: (){
              setScreen("filters");
            },
          )

        ],
      ),
    );
  }
}
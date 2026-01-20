import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key, required this.currentFilters});

  final Map<Filter,bool> currentFilters;

  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}
enum Filter{
  simple,
  challenging,
  hard,
  vegetarian
}

class _FiltersScreenState extends State<FiltersScreen> {
  var isSimpleChecked = false;
  var isChallengingChecked = false;
  var isHardChecked = false;
  var isVegetarian = false;

  @override
  void initState() {
    super.initState();
    isSimpleChecked = widget.currentFilters[Filter.simple]!;
    isChallengingChecked = widget.currentFilters[Filter.challenging]!;
    isHardChecked = widget.currentFilters[Filter.hard]!;
    isVegetarian = widget.currentFilters[Filter.vegetarian]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Filters")),
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (bool didPop, dynamic result) {
          if (didPop) return;
          Navigator.of(context).pop({
            Filter.simple : isSimpleChecked,
            Filter.challenging : isChallengingChecked,
            Filter.hard : isHardChecked,
            Filter.vegetarian: isVegetarian
          });
        },
        child: Column(
          children: [
            SwitchListTile(
              value: isSimpleChecked,
              onChanged: (isChecked) {
                setState(() {
                  isSimpleChecked = isChecked;
                });
              },
              title: Text(
                "Simple",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              activeThumbColor: Theme.of(context).colorScheme.tertiary,
            ),
            SwitchListTile(
              value: isChallengingChecked,
              onChanged: (isChecked) {
                setState(() {
                  isChallengingChecked = isChecked;
                });
              },
              title: Text(
                "Challenging",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              activeThumbColor: Theme.of(context).colorScheme.tertiary,
            ),
            SwitchListTile(
              value: isHardChecked,
              onChanged: (isChecked) {
                setState(() {
                  isHardChecked = isChecked;
                });
              },
              title: Text(
                "Hard",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              activeThumbColor: Theme.of(context).colorScheme.tertiary,
            ),
            SwitchListTile(
              value: isVegetarian,
              onChanged: (isChecked) {
                setState(() {
                  isVegetarian = isChecked;
                });
              },
              title: Text(
                "Vegetarian",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              activeThumbColor: Theme.of(context).colorScheme.tertiary,
            ),
          ],
        ),
      ),
    );
  }
}

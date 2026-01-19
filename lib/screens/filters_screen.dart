import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  var isSimpleChecked = false;
  var isChallengingChecked = false;
  var isHardChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Filters")),
      body: Column(
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
                color: Theme.of(context).colorScheme.onBackground,
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
                color: Theme.of(context).colorScheme.onBackground,
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
              "hard",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            activeThumbColor: Theme.of(context).colorScheme.tertiary,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/providers/filters_provider.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Filters"),
        actions: [
        IconButton(
          icon: const Icon(Icons.check),
          onPressed: () => Navigator.pop(context),
        )
      ],
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: activeFilters[Filter.simple]!,
            onChanged: (isChecked) {
              ref.read(filtersProvider.notifier).setFilter(Filter.simple, isChecked);
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
            value: activeFilters[Filter.challenging]!,
            onChanged: (isChecked) {
              ref.read(filtersProvider.notifier).setFilter(Filter.challenging, isChecked);
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
            value: activeFilters[Filter.hard]!,
            onChanged: (isChecked) {
              ref.read(filtersProvider.notifier).setFilter(Filter.hard, isChecked);
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
            value: activeFilters[Filter.vegetarian]!,
            onChanged: (isChecked) {
              ref.read(filtersProvider.notifier).setFilter(Filter.vegetarian, isChecked);
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
    );
  }
}

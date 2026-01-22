import "package:flutter_riverpod/flutter_riverpod.dart";

enum Filter { simple, challenging, hard, vegetarian }

class FiltersNotifier extends Notifier<Map<Filter, bool>> {
  @override
  Map<Filter, bool> build() {
    return {
      Filter.simple: false,
      Filter.challenging: false,
      Filter.hard: false,
      Filter.vegetarian: false,
    };
  }

  Map<Filter, bool> setFilters(Map<Filter, bool> choosenFilter) {
    state = choosenFilter;
    return state;
  }

  void setFilter(Filter filter, bool isActive) {
    state = {...state, filter: isActive};
  }
}

final filtersProvider = NotifierProvider<FiltersNotifier, Map<Filter, bool>>(
  FiltersNotifier.new,
);

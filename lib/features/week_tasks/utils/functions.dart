
getPublicTasks() {
  return [1, 2, 3, 4, 5, 6, 7];
} // TODO

getPrivateTasks() {
  return [1, 2, 3, 4, 5, 6, 7];
} // TODO

List<DateTime> getDaysOfCurrentWeek() {
  // TODO: utils -> core/utils/extensions.dart (on DateTime)
  DateTime now = DateTime.now();
  now = now.subtract(Duration(days: now.weekday - 1));
  return List.generate(7, (index) => index)
      .map((value) => (now.add(Duration(days: value))))
      .toList();
}

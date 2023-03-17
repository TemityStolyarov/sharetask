import 'package:flutter/material.dart';
import 'package:sharetask/features/week_tasks/utils/widgets.dart';
import 'package:sharetask/utils/global_functions.dart';
import 'package:sharetask/features/week_tasks/utils/functions.dart';
import 'package:sharetask/features/week_tasks/widgets/list_task_tile.dart';

weekTaskPage() {
  return Scaffold(
    appBar: AppBar(
      automaticallyImplyLeading: false,
      title: const Text('Март'),
      centerTitle: true,
    ),
    body: Scrollbar(
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTask(
            currentWeek: getDaysOfCurrentWeek(),
            dayNumber: index,
            publicTasks: getPublicTasks(),
            privateTasks: getPrivateTasks(),
            onPressedTile: () {
              showSnackMessage(context, 'Ты нажал на задачу');
            },
            onPressedAdd: () {
              showSnackMessage(context, 'Ты нажал на плюс');
            },
          );
        },
        itemCount: 7,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 0);
        },
      ),
    ),
  );
}

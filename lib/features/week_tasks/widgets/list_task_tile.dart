import 'dart:math';

import 'package:flutter/material.dart';

class ListTask extends StatelessWidget {
  const ListTask({
    super.key,
    required this.dayNumber,
    required this.currentWeek,
    required this.publicTasks,
    required this.privateTasks,
    required this.onPressedTile,
    required this.onPressedAdd,
  });
  final int dayNumber;
  final List<DateTime> currentWeek;
  final List<int> publicTasks;
  final List<int> privateTasks;

  static const List<String> dayNames = [
    // TODO: list X, map V
    'ПН',
    'ВТ',
    'СР',
    'ЧТ',
    'ПТ',
    'СБ',
    'ВС'
  ];
  final VoidCallback onPressedTile;
  final VoidCallback onPressedAdd;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        alignment: AlignmentDirectional.centerEnd,
        children: [
          InkWell(
            onTap: onPressedTile,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    // radius: 21,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          dayNames[dayNumber],
                          //textAlign: TextAlign.center,
                          textScaleFactor: 0.8,
                        ),
                        Text(
                          '${currentWeek[dayNumber].day}',
                          textAlign: TextAlign.center,
                          textScaleFactor: 0.95,
                        ),
                      ],
                    ),
                  ),
                ),
                //const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('2 общих задачи'),
                      //TODO вставить задачи, изменить на лист объектов класса задач
                      const Text('1 личная задача'), // TODO: SAME
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                icon: const Icon(Icons.add, size: 20),
                hoverColor: Theme.of(context).hoverColor,
                splashRadius: 19,
                onPressed: onPressedAdd,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sharetask/features/week_tasks/week_task_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return weekTaskPage();
  }
}

getRoutes() {
  return {
    '/': (context) => const MyHomePage(), // TODO сразу weekTaskPage() stateless
    //'/details': (context) => DetailScreen(),
  };
}

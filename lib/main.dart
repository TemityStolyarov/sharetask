import 'package:flutter/material.dart';
import 'package:sharetask/core/utils/color_scheme.dart';
import 'package:sharetask/core/utils/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: useDarkTheme(),
      routes: getRoutes(),
    );
  }
}

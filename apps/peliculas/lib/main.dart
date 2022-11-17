import 'package:flutter/material.dart';
import 'package:peliculas/theme/app_theme.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Películas',
        initialRoute: 'home',
        routes: {
          'home': (BuildContext context) => const HomeScreen(),
          'details': (BuildContext context) => const DetailsScreen(),
        },
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: const Center(
            child: Text('Hello World'),
          ),
        ),
        theme: AppTheme.lightTheme);
  }
}

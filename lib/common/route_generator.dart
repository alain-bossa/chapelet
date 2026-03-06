import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final args = settings.arguments;
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Erreur'),
        ),
        body: const Center(
          child: Text(
            'ERREUR: Essayez encore.',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'screens/recipe_screen.dart';  // Importamos la pantalla de la receta

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecipeScreen(),
    );
  }
}

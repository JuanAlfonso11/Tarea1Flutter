import 'package:flutter/material.dart';
import 'package:tarea1flutter/widgets/info_column.dart';

class RecipeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Strawberry Pavlova'),
        backgroundColor: Colors.pink[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Columna para el texto y detalles
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Strawberry Pavlova',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.pink[900],
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
                          'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                      style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                    ),
                    SizedBox(height: 16),
                    // Ajuste con Wrap para evitar overflow y mejor distribución
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 24),
                        Icon(Icons.star, color: Colors.amber, size: 24),
                        Icon(Icons.star, color: Colors.amber, size: 24),
                        Icon(Icons.star, color: Colors.amber, size: 24),
                        Icon(Icons.star_half, color: Colors.amber, size: 24),
                        SizedBox(width: 8),
                        Text(
                          '170 Reviews',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    InfoColumn(),
                  ],
                ),
              ),
            ),
            // Imagen a la derecha con bordes redondeados y sombra
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: AspectRatio(
                      aspectRatio: 1.5,
                      child: Image.asset('assets/pavlova.jpg', fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

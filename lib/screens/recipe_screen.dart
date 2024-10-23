import 'package:flutter/material.dart';
import 'package:tarea1flutter/widgets/info_column.dart';

class RecipeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // Esto quita el banner de modo debug
      home: Scaffold(
        appBar: AppBar(
          title: Text('Strawberry Pavlova'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Columna a la izquierda (texto y detalles)
              Expanded(
                flex: 1,  // Se asegura que esta parte ocupe el 50% del espacio
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Strawberry Pavlova',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
                            'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.red, size: 20),
                          Icon(Icons.star, color: Colors.red, size: 20),
                          Icon(Icons.star, color: Colors.red, size: 20),
                          Icon(Icons.star, color: Colors.red, size: 20),
                          Icon(Icons.star_half, color: Colors.red, size: 20),
                          SizedBox(width: 8),
                          Expanded(  // Usamos Expanded para que el texto no cause overflow
                            child: Text('170 Reviews', style: TextStyle(fontSize: 16)),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      InfoColumn(),
                    ],
                  ),
                ),
              ),
              // Imagen a la derecha
              Expanded(
                flex: 1,  // Se asegura que la imagen ocupe el 50% del espacio
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: AspectRatio(
                    aspectRatio: 1.5,  // Controlamos la proporción de la imagen
                    child: Image.asset('assets/pavlova.jpg', fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tarea1flutter/main.dart'; // Asegúrate de importar el archivo correcto

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(RecipeApp()); // Cambia 'MyApp' por 'RecipeApp'

    // Verifica que el contador empieza en 0 (si tienes un contador en tu app).
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Simula un tap en el ícono '+' y actualiza el frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifica que el contador haya incrementado a 1.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

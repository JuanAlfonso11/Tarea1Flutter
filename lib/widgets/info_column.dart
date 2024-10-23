import 'package:flutter/material.dart';

class InfoColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Distribuye uniformemente
      children: [
        _buildInfoColumn(Icons.timer, 'PREP:', '25 min'),
        _buildInfoColumn(Icons.kitchen, 'COOK:', '1 hr'),
        _buildInfoColumn(Icons.restaurant, 'FEEDS:', '4-6'),
      ],
    );
  }

  Widget _buildInfoColumn(IconData icon, String label, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(icon, color: Colors.green, size: 24),  // Tamaño fijo del ícono (3 píxeles)
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),  // Tamaño fijo del texto (1 píxel por 8 unidades)
        Text(value, style: TextStyle(fontSize: 16)),  // Tamaño fijo del texto (1 píxel por 8 unidades)
      ],
    );
  }
}

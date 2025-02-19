import 'package:flutter/material.dart';

class W2 extends StatelessWidget {
  final double value;

  const W2({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    // Cambia el color dependiendo de la porción decimal
    Color backgroundColor = (value - value.toInt()) < 0.4 ? Colors.grey : Colors.blueGrey;

    return Container(
      key: const Key('W2'),
      width: 200,
      height: 200,
      color: backgroundColor,
    );
  }
}

import 'package:flutter/material.dart';
import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double value = 0.0;

  // Función para incrementar en 0.1
  void _addSmall() {
    setState(() {
      value += 0.1;
    });
  }

  // Función para decrementar en 0.1
  void _subtractSmall() {
    setState(() {
      value -= 0.1;
    });
  }

  // Función para incrementar en 1.0
  void _addLarge() {
    setState(() {
      value += 1.0;
    });
  }

  // Función para decrementar en 1.0
  void _subtractLarge() {
    setState(() {
      value -= 1.0;
    });
  }

  // Función para reiniciar el valor a 0.0
  void _reset() {
    setState(() {
      value = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            // Botón de reiniciar (resetear el valor)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: _reset,
                  icon: const Icon(Icons.refresh),
                  key: const Key('Refresh'),
                ),
              ],
            ),
            
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  W1(
                    value: value,
                    addSmall: _addSmall,
                    subtractSmall: _subtractSmall,
                  ), // Widget para incrementar/decrementar por 0.1
                  W2(value: value), // Widget que cambia de color según el valor
                  W3(
                    value: value,
                    addLarge: _addLarge,
                    subtractLarge: _subtractLarge,
                  ), // Widget para incrementar/decrementar por 1.0
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

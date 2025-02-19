import 'package:flutter/material.dart';

class W3 extends StatelessWidget {
  final double value;
  final Function() addLarge;
  final Function() subtractLarge;

  const W3({
    super.key,
    required this.value,
    required this.addLarge,
    required this.subtractLarge,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Display del valor
          Container(
            padding: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Text(
              value.toStringAsFixed(1),
              key: const Key('W3Value'),
            ),
          ),
          // Botones para aumentar/restar por 1.0
          Container(margin: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: addLarge,
                  icon: const Icon(Icons.add),
                  key: const Key('W3AddLarge'),
                ),
                IconButton(
                  onPressed: subtractLarge,
                  icon: const Icon(Icons.remove),
                  key: const Key('W3SubLarge'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

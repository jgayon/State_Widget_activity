import 'package:flutter/material.dart';

class W1 extends StatelessWidget {
  final double value;
  final Function() addSmall;
  final Function() subtractSmall;

  const W1({
    super.key,
    required this.value,
    required this.addSmall,
    required this.subtractSmall,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          
          Container(
            padding: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Text(
              value.toStringAsFixed(1),
              key: const Key('W1Value'),
            ),
          ),
          
          Container(margin: const EdgeInsets.all(10),
            color: Theme.of(context).colorScheme.inversePrimary,
            child: Column(
              children: [
                IconButton(
                  onPressed: addSmall,
                  icon: const Icon(Icons.add),
                  key: const Key('W1Add'),
                ),
                IconButton(
                  onPressed: subtractSmall,
                  icon: const Icon(Icons.remove),
                  key: const Key('W1Sub'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

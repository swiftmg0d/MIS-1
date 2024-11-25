import 'package:flutter/material.dart';

class ProductDialog extends StatelessWidget {
  final String name;
  final String picture;
  final String description;
  final double price;

  const ProductDialog({
    required this.name,
    required this.picture,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(name),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(picture),
          const SizedBox(height: 10),
          Text(description),
          const SizedBox(height: 10),
          Text('\$${price.toStringAsFixed(2)}'),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}

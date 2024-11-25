// ignore: file_names
import 'package:flutter/material.dart';
import 'package:lab1/widgets/product_dialog.dart';

class ProductCard extends StatefulWidget {
  final int id;
  final String name;
  final String picture;
  final String description;
  final double price;

  const ProductCard({
    required this.id,
    required this.name,
    required this.picture,
    required this.description,
    required this.price,
  });

  @override
  State<ProductCard> createState() => _ProductcardState();
}

class _ProductcardState extends State<ProductCard> {
  
  void _showProductDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ProductDialog(
          name: widget.name,
          picture: widget.picture,
          description: widget.description,
          price: widget.price,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: _showProductDialog,
            child: Image.network(widget.picture),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lab1/model/Product.dart';
import 'package:lab1/widgets/product_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Product> list0fProducts = [
    Product(
      id: 1,
      name: "Hat",
      picture: "https://static.zara.net/assets/public/eaf5/05af/822243de8fab/28c6454a4273/04331308800-e1/04331308800-e1.jpg?ts=1729852420977&w=563",
      description: "A stylish summer hat.",
      price: 14.99,
    ),
    Product(
      id: 2,
      name: "Shirt",
      picture: "https://static.zara.net/assets/public/0492/5238/79d94633aa48/9301e144a966/01943303802-e1/01943303802-e1.jpg?ts=1726219411264&w=563",
      description: "A comfortable cotton shirt.",
      price: 19.99,
    ),
     Product(
      id: 3,
      name: "Jacket",
      picture: "https://static.zara.net/assets/public/b64a/08b2/f8d747a5a949/2a502b38643e/00155312507-e1/00155312507-e1.jpg?ts=1732004741797&w=563",
      description: "A warm winter jacket.",
      price: 89.99,
    ),
    Product(
      id: 4,
      name: "Jeans",
      picture: "https://static.zara.net/assets/public/8d2b/9b44/cff6473aa5b5/67bf0fc1cf0e/03991337400-e1/03991337400-e1.jpg?ts=1732201012253&w=563",
      description: "Stylish blue jeans.",
      price: 49.99,
    ),
   
    Product(
      id: 5,
      name: "Sneakers",
      picture: "https://static.zara.net/assets/public/9d87/924d/fd9845d49bb2/f3214bd313a9/12311420808-e2/12311420808-e2.jpg?ts=1731429362908&w=563",
      description: "Comfortable running sneakers.",
      price: 59.99,
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 68, 97, 97),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.white,
        ),
        title: const Text(
          "216139",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "List of products:",
                style: TextStyle(
                  fontWeight:FontWeight.bold
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: list0fProducts
                  .map((product) => ProductCard(
                        id: product.id,
                        name: product.name,
                        picture: product.picture,
                        description: product.description,
                        price: product.price,
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

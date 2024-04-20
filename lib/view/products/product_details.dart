// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                product['thumbnail'],
                fit: BoxFit.fill,
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            Text(
              product['en']['title'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Price: ${product['price']} SAR',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              product['en']['description'],
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Brand: ${product['en']['brand']}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Rating: ${product['rating']} (${product['ratingQuantity']} reviews)',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Quantity in Stock: ${product['quantityInStock']}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(247, 202, 0, 1))),
                onPressed: () {
                  // Add functionality to handle adding the product to cart or other actions
                  print('Product added to cart: ${product['en']['title']}');
                },
                child: Text(
                  'Add to Cart',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

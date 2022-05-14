import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, stock, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.stock,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Reel BC Fugu Taru",
      price: 340000,
      stock: 12,
      description: dummyText,
      image: "assets/images/reel.png",
      color: Color.fromARGB(255, 174, 61, 61)),
  Product(
      id: 2,
      title: "Reel BC Fugu Wanu",
      price: 450000,
      stock: 8,
      description: dummyText,
      image: "assets/images/reel2.png",
      color: Color.fromARGB(255, 211, 210, 132)),
  Product(
      id: 3,
      title: "Reel Kaizen Gin",
      price: 120000,
      stock: 10,
      description: dummyText,
      image: "assets/images/reel3.png",
      color: Color.fromARGB(255, 185, 185, 185)),
  Product(
      id: 4,
      title: "Reel BC Catfish",
      price: 230000,
      stock: 11,
      description: dummyText,
      image: "assets/images/reel4.png",
      color: Color.fromARGB(255, 118, 117, 117)),
  Product(
      id: 5,
      title: "Jump Frog",
      price: 45000,
      stock: 12,
      description: dummyText,
      image: "assets/images/lure1.png",
      color: Color.fromARGB(255, 251, 144, 120)),
  Product(
    id: 6,
    title: "Soft Frog",
    price: 32000,
    stock: 12,
    description: dummyText,
    image: "assets/images/lure2.png",
    color: Color.fromARGB(255, 98, 154, 191),
  ),
];

String dummyText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

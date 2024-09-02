
import 'package:flutter/material.dart';

class Product {
  final String title;
  final String image;
  final String description;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product({
    required this.title,
    required this.image,
    required this.description,
    required this.review,
    required this.seller,
    required this.price,
    required this.colors,
    required this.category,
    required this.rate,
    required this.quantity,
  });
}

final List<Product> ProductList = [
  Product(
      title: 'Headphone',
      image: 'assets/all/wireless.png',
      description:
          'Wireless headphones are designed for active lifestyles. Pick up the phone without having to literally pick up your phone, dance in your living without getting tangled up, work out without getting your wires crossed.',
      review: "(302 Reviews)",
      seller: 'Tariqul Islam',
      price: 120,
      colors: [
        Colors.black,
        Colors.blue,
        Colors.orange,
      ],
      category: "Electronics",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'Woman Sweter',
      image: 'assets/all/sweet.png',
      description:
          "When it comes to women’s sweaters, the choice of material plays a pivotal role in defining both comfort and durability. Wool, known for its warmth and breathability, stands as a popular choice, offering insulation during colder months.",
      review: "(104 Reviews)",
      seller: 'John Moxley',
      price: 155,
      colors: [
        Colors.brown,
        Colors.deepPurple,
        Colors.orange,
      ],
      category: "Woman Fashion",
      rate: 4.5,
      quantity: 1),
  Product(
      title: 'Smart Watch',
      image: 'assets/all/miband.jpg',
      description:
          'Heart rate monitoring, GPS tracking, sleep tracking, step counting, workout detection, calorie tracking, water resistance, ECG, SpO2 monitoring, and stress tracking.',
      review: "(43 Reviews)",
      seller: 'Ram Das',
      price: 430,
      colors: [Colors.black, Colors.amber, Colors.purple],
      category: "Electronics",
      rate: 4.0,
      quantity: 1),
  Product(
      title: 'Mens Jacket',
      image: 'assets/all/jacket.png',
      description:
          'Wearing hooded shirts and jackets can offer several benefits: Warmth: The hood provides an additional layer of insulation for the head and neck, helping to keep you warm in cold weather. ',
      review: "(20 Reviews)",
      seller: 'Jacket Store',
      price: 255,
      colors: [
        Colors.blueAccent,
        Colors.orange,
        Colors.green,
      ],
      category: 'Men Fashion',
      rate: 4.2,
      quantity: 1),

  Product(
      title: 'Watch',
      image: 'assets/all/watch.png',
      description:
      'Good timekeeping is essential for most jobs, and if you’re out and about the chances are you won’t be able to immediately see a clock or be able to have your phone switched on. A watch just makes sense here. ',
      review: "(100 Reviews)",
      seller: 'Watch Store',
      price: 1000,
      colors: [
        Colors.lightBlue,
        Colors.orange,
        Colors.purple,
      ],
      category: 'Men Fashion',
      rate: 4.4,
      quantity: 1),

  Product(
      title: 'Air Jordan',
      image: 'assets/all/Air Jordan.png',
      description:
      'High quality shoes have durability and protection, and through their strong built it can provide you safety from the unwanted injuries.',
      review: "(201 Reviews)",
      seller: 'The Sellers',
      price: 300,
      colors: [
        Colors.grey,
        Colors.amber,
        Colors.purple,
      ],
      category: 'Shoes',
      rate: 3.8,
      quantity: 1),
  Product(
    title: "Super Perfume",
    description:'Just like dressing well, smelling good is also quite necessary. Smelling good will be a great booster to your personality. ',
    image: "assets/all/perfume.png",
    price: 155,
    seller: "Love Seller",
    colors: [
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.green,
    ],
    category: "Beauty",
    review: "(99 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),

  Product(
    title: "Wedding Ring",
    description:'Wedding rings are symbols of a couple’s commitment to one another and are often the most cherished piece of jewellery for the wearer.',
    image: "assets/all/wedding ring.png",
    price: 275,
    seller: "Ferguson",
    colors: [
      Colors.brown,
      Colors.purpleAccent,
      Colors.blueGrey,
    ],
    category: "Jewelry",
    review: "(80 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),

  Product(
    title: "  Pants",
    description:'Pants provide comfort and protection for the legs, making them suitable for different activities and weather conditions. ',
    image: "assets/all/pants.png",
    price: 280,
    seller: "PK Store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "WomenFashion",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),


];
final List<Product> all = [
  Product(
      title: 'Headphone',
      image: 'assets/all/wireless.png',
      description:
      'Wireless headphones are designed for active lifestyles. Pick up the phone without having to literally pick up your phone, dance in your living without getting tangled up, work out without getting your wires crossed.',
      review: "(302 Reviews)",
      seller: 'Tariqul Islam',
      price: 120,
      colors: [
        Colors.black,
        Colors.blue,
        Colors.orange,
      ],
      category: "Electronics",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'Woman Sweter',
      image: 'assets/all/sweet.png',
      description:
      "When it comes to women’s sweaters, the choice of material plays a pivotal role in defining both comfort and durability. Wool, known for its warmth and breathability, stands as a popular choice, offering insulation during colder months.",
      review: "(104 Reviews)",
      seller: 'John Moxley',
      price: 155,
      colors: [
        Colors.brown,
        Colors.deepPurple,
        Colors.orange,
      ],
      category: "Woman Fashion",
      rate: 4.5,
      quantity: 1),
  Product(
      title: 'Smart Watch',
      image: 'assets/all/miband.jpg',
      description:
      'Heart rate monitoring, GPS tracking, sleep tracking, step counting, workout detection, calorie tracking, water resistance, ECG, SpO2 monitoring, and stress tracking.',
      review: "(43 Reviews)",
      seller: 'Ram Das',
      price: 430,
      colors: [Colors.black, Colors.amber, Colors.purple],
      category: "Electronics",
      rate: 4.0,
      quantity: 1),
  Product(
      title: 'Mens Jacket',
      image: 'assets/all/jacket.png',
      description:
      'Wearing hooded shirts and jackets can offer several benefits: Warmth: The hood provides an additional layer of insulation for the head and neck, helping to keep you warm in cold weather. ',
      review: "(20 Reviews)",
      seller: 'Jacket Store',
      price: 255,
      colors: [
        Colors.blueAccent,
        Colors.orange,
        Colors.green,
      ],
      category: 'Men Fashion',
      rate: 4.2,
      quantity: 1),

  Product(
      title: 'Watch',
      image: 'assets/all/watch.png',
      description:
      'Good timekeeping is essential for most jobs, and if you’re out and about the chances are you won’t be able to immediately see a clock or be able to have your phone switched on. A watch just makes sense here. ',
      review: "(100 Reviews)",
      seller: 'Watch Store',
      price: 1000,
      colors: [
        Colors.lightBlue,
        Colors.orange,
        Colors.purple,
      ],
      category: 'Men Fashion',
      rate: 4.4,
      quantity: 1),

  Product(
      title: 'Air Jordan',
      image: 'assets/all/Air Jordan.png',
      description:
      'High quality shoes have durability and protection, and through their strong built it can provide you safety from the unwanted injuries.',
      review: "(201 Reviews)",
      seller: 'The Sellers',
      price: 300,
      colors: [
        Colors.grey,
        Colors.amber,
        Colors.purple,
      ],
      category: 'Shoes',
      rate: 3.8,
      quantity: 1),
  Product(
    title: "Super Perfume",
    description:'Just like dressing well, smelling good is also quite necessary. Smelling good will be a great booster to your personality. ',
    image: "assets/all/perfume.png",
    price: 155,
    seller: "Love Seller",
    colors: [
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.green,
    ],
    category: "Beauty",
    review: "(99 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),

  Product(
    title: "Wedding Ring",
    description:'Wedding rings are symbols of a couple’s commitment to one another and are often the most cherished piece of jewellery for the wearer.',
    image: "assets/all/wedding ring.png",
    price: 275,
    seller: "Ferguson",
    colors: [
      Colors.brown,
      Colors.purpleAccent,
      Colors.blueGrey,
    ],
    category: "Jewelry",
    review: "(80 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),

  Product(
    title: "  Pants",
    description:'Pants provide comfort and protection for the legs, making them suitable for different activities and weather conditions. ',
    image: "assets/all/pants.png",
    price: 280,
    seller: "PK Store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "WomenFashion",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),

];

final List<Product> shoes = [
  Product(
    title: "Air Jordan",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/shoes/Air Jordan.png",
    price: 255,
    seller: "The Seller",
    colors: [
      Colors.grey,
      Colors.amber,
      Colors.purple,
    ],
    category: "Shoes",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Vans Old Skool",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/shoes/vans old skool.png",
    price: 300,
    seller: "Mrs Store",
    colors: [
      Colors.blueAccent,
      Colors.blueGrey,
      Colors.green,
    ],
    category: "Shoes",
    review: "(200 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Men-Shoes",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/shoes/women-shoes.png",
    price: 500,
    seller: "Shoes Store",
    colors: [
      Colors.red,
      Colors.orange,
      Colors.greenAccent,
    ],
    category: "Shoes",
    review: "(100 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Sports Shoes",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/shoes/sports shoes.png",
    price: 155,
    seller: "Hari Store",
    colors: [
      Colors.deepPurpleAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Shoes",
    review: "(60 Reviews)",
    rate: 3.0,
    quantity: 1,
  ),
  Product(
    title: "White Sneaker",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/shoes/white sneaker.png",
    price: 1000,
    seller: "Jacket Store",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Shoes",
    review: "(00 Reviews)",
    rate: 0.0,
    quantity: 1,
  ),

];


final List<Product> beauty = [
  Product(
    title: "Face Care Product",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/beauty/face care.png",
    price: 1500,
    seller: "Yojana Seller",
    colors: [
      Colors.pink,
      Colors.amber,
      Colors.deepOrangeAccent,
    ],
    category: "Beauty",
    review: "(200 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Super Perfume",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/beauty/perfume.png",
    price: 155,
    seller: "Love Seller",
    colors: [
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.green,
    ],
    category: "Beauty",
    review: "(99 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),
  Product(
    title: "Skin-Care Product",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/beauty/skin-care.png",
    price: 999,
    seller: "Mr Beast",
    colors: [
      Colors.black12,
      Colors.orange,
      Colors.white38,
    ],
    category: "Beauty",
    review: "(20 Reviews)",
    rate: 4.2,
    quantity: 1,
  ),
];

final List<Product> womenFashion = [

  Product(
    title: " Women Kurta",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/women fashion/kurta.png",
    price: 299,
    seller: "Sila Store",
    colors: [
      Colors.grey,
      Colors.black54,
      Colors.purple,
    ],
    category: "WomenFashion",
    review: "(25 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Mens Jacket",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/women fashion/lehenga.png",
    price: 666,
    seller: "My Store",
    colors: [
      Colors.black,
      Colors.orange,
      Colors.green,
    ],
    category: "WomenFashion",
    review: "(100 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "T-Shert",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/women fashion/t-shert.png",
    price: 155,
    seller: "Love Store",
    colors: [
      Colors.blueAccent,
      Colors.redAccent,
      Colors.deepOrangeAccent,
    ],
    category: "Electronics",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "  Pants",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/women fashion/pants.png",
    price: 155,
    seller: "PK Store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "WomenFashion",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];
final List<Product> jewelry = [

  Product(
    title: "Earings",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/jewellery/earrings.png",
    price: 3000,
    seller: "Gold Store",
    colors: [
      Colors.amber,
      Colors.deepPurple,
      Colors.pink,
    ],
    category: "Jewelry",
    review: "(320 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Jewelry-Box",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/jewellery/jewelry-box.png",
    price: 300,
    seller: "Love Love",
    colors: [
      Colors.pink,
      Colors.orange,
      Colors.redAccent,
    ],
    category: "Jewelry",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Wedding Ring",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/jewellery/wedding ring.png",
    price: 155,
    seller: "I Am Seller",
    colors: [
      Colors.brown,
      Colors.purpleAccent,
      Colors.blueGrey,
    ],
    category: "Jewelry",
    review: "(80 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Necklace",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/jewellery/necklace-jewellery.png",
    price: 5000,
    seller: "Jewellery Store",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Jewellery",
    review: "(22 Reviews)",
    rate: 3.5,
    quantity: 1,
  ),
];
final List<Product> menFashion = [

  Product(
    title: "Man Jacket",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/men fashion/man jacket.png",
    price: 500,
    seller: "Men Store",
    colors: [
      Colors.brown,
      Colors.orange,
      Colors.blueGrey,
    ],
    category: "MenFashion",
    review: "(90 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Men Pants",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/men fashion/pants.png",
    price: 400,
    seller: "My Store",
    colors: [
      Colors.black54,
      Colors.orange,
      Colors.green,
    ],
    category: "MenFashion",
    review: "(500 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Men Shirt",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/men fashion/shirt.png",
    price: 300,
    seller: "Roman Store",
    colors: [
      Colors.pink,
      Colors.amber,
      Colors.green,
    ],
    category: "menFashion",
    review: "(200 Reviews)",
    rate: 3.0,
    quantity: 1,
  ),
  Product(
    title: "T-Shirt",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/men fashion/t-shirt.png",
    price: 200,
    seller: "Hot Store",
    colors: [
      Colors.brown,
      Colors.orange,
      Colors.blue,
    ],
    category: "MenFashion",
    review: "(1k Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Watch",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "assets/men fashion/watch.png",
    price: 1000,
    seller: "Jacket Store",
    colors: [
      Colors.lightBlue,
      Colors.orange,
      Colors.purple,
    ],
    category: "MenFashion",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),

];

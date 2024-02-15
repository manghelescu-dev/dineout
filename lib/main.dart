import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  final List<MenuItem> menuItems = [
    MenuItem(
      category: "Appetizers",
      title: "Bruschetta",
      description: "Grilled bread garlic, tomatoes, olive oil.",
      price: "\$8.99",
    ),
    MenuItem(
      category: "Appetizers",
      title: "Stuffed Mushrooms",
      description: "Mushrooms filled with Italian sausage and cheese.",
      price: "\$10.99",
    ),
    MenuItem(
      category: "Main Courses",
      title: "Margherita Pizza",
      description: "Tomato sauce, mozzarella, fresh basil.",
      price: "\$14.99",
    ),
    MenuItem(
      category: "Main Courses",
      title: "Lasagna",
      description: "Layers of pasta, meat sauce, and cheese.",
      price: "\$17.99",
    ),
    MenuItem(
      category: "Desserts",
      title: "Tiramisu",
      description: "Coffee-flavored Italian dessert.",
      price: "\$6.99",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Menu'),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final item = menuItems[index];
          return ListTile(
            title: Text(item.title),
            subtitle: Text(item.description),
            trailing: Text(item.price),
            isThreeLine: true,
          );
        },
      ),
    );
  }
}

class MenuItem {
  final String category;
  final String title;
  final String description;
  final String price;

  MenuItem({
    required this.category,
    required this.title,
    required this.description,
    required this.price,
  });
}

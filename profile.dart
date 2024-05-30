import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop',
      theme: ThemeData(
        primarySwatch:Colors.brown,
      )
      home: CoffeShopProfile(),
    );
  }
}

class CoffeeShopProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Shop Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Welcome to our Coffee Shop!',
              style: TextStyle(fontsize: 24, fontweight: FOntWeight.bold),
            ),
            SizedBox(height: 20),
            Text('We offer a variety of delicious drinks and pastries:'),
            SizedBox(height: 10),
            DrinkItem('Cappucino', 'A rich and creamy coffee drink'),
            DrinkItem('Latte', 'A velvety-smooth coffee drink'),
            DrinkItem('Americano', 'A strong and rich coffee drink'),
            DrinkItem('Espresso', 'A strong and concentrated coffee shot'),
            PastryItem('Muffins', 'Moist and flavorful pastries'),
            PastryItem('Cakes', 'Delicious and decadent pastries'),
          ],
        ),
      ),
    ),
  },
},

class DrinkItem extends StatelessWidget {
  final String name;
  final String description;

DrinkItem(this.name, this.description);

@override
Widget build(BuildContext context) {
  return ListTitle(
    title: Text(name),
    subtitle: Text(description),
  );
}
}

class PastryItem extends StatelessWidget {
  final String name;
  final String description;

  PastryItem(this.name, this.description);

  @override
  Widget build(BuildContext context) {
    return ListTitle(
      title: Text(name),
      subtitle: Text(description),
    );
  }
}

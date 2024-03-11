import 'package:flutter/material.dart';

void main() {
  runApp(BiriyaniApp());
}

class BiriyaniApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biriyani Explorer',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BiriyaniHomePage(),
    );
  }
}

class BiriyaniHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore Biriyani'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Biriyani Explorer!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BiriyaniDetailsPage()),
                );
              },
              child: Text('Explore Biriyani'),
            ),
          ],
        ),
      ),
    );
  }
}

class BiriyaniDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biriyani Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Specifications of Different Types of Biriyanis',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            // Add specifications of biriyanis here
            Text('Hyderabadi Biryani: Spicy, Flavorful, Basmati Rice, Chicken/Mutton'),
            Text('Lucknowi Biryani: Fragrant, Tender Meat, Saffron, Nuts, Spices'),
            Text('Kolkata Biryani: Mild, Potatoes, Eggs, Aromatic Spices'),
            // Add more biriyani specifications as needed
          ],
        ),
      ),
    );
  }
}

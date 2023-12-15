import 'package:flutter/material.dart';
import 'package:dhouibs_farm/confirmation.dart';
import 'package:dhouibs_farm/main.dart';

void main() {
  runApp(const Magasin());
}

class Product {
  final String name;
  final String description;
  final String price;
  final String origin;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.origin,
  });
}

class Magasin extends StatelessWidget {
  const Magasin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dhouib's Farm",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 56, 119, 9)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> urls = [
    "assets/images/100.png",
    "assets/images/222.png",
    "assets/images/333.png",
    "assets/images/444.png",
    "assets/images/666.png"
  ];
  int position = 0;
  int counter = 0;

  List<Product> products = [
    Product(
      name: 'Fraise',
      description:
          'Possède la Vitamine C, Fer, Vitamine B6, Magnésium, Vitamine B₁₂, Vitamine D, Calcium',
      price: '3.5 DT/KG',
      origin: 'Tunisie',
    ),
    Product(
      name: 'Oranges',
      description:
          'Possède la Vitamine C, Fer, Vitamine B6, Magnésium, Calcium, Vitamine B₁₂, Vitamine D',
      price: '1.5 DT/KG',
      origin: 'Tunisie',
    ),
    Product(
      name: 'Piment',
      description: 'Rouge, Vert',
      price: '2.3 DT/KG',
      origin: 'Tunisie',
    ),
    Product(
      name: 'Pomme',
      description: 'Possède la Vitamine C, Fer, Vitamine B6, Magnésium',
      price: '4 DT/KG',
      origin: 'Tunisie',
    ),
    Product(
      name: 'Avocat',
      description: 'Possède la Vitamine C, Fer, Vitamine B6, Magnésium',
      price: '4 DT/KG',
      origin: 'Mexique',
    ),
  ];

  void rightButton() {
    setState(() {
      if (position < urls.length - 1) {
        position++;
        counter = 0;
      }
    });
  }

  void leftButton() {
    setState(() {
      if (position > 0) {
        position--;
        counter = 0;
      }
    });
  }

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Les produits frais🌞🚜"),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const MyApp()),
                (route) => false,
              );
            },
            icon: const Icon(Icons.home, size: 30, color: Colors.white),
          ),
          IconButton(
            onPressed: leftButton,
            icon: const Icon(Icons.arrow_circle_left,
                size: 30, color: Colors.white),
          ),
          IconButton(
            onPressed: rightButton,
            icon: const Icon(Icons.arrow_circle_right,
                size: 30, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              urls[position],
              height: 500,
              width: 500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: incrementCounter,
                  icon: const Icon(Icons.add_circle, size: 50),
                ),
                Text(
                  'KG: $counter',
                  style: const TextStyle(fontSize: 35, color: Colors.black),
                ),
                IconButton(
                  onPressed: decrementCounter,
                  icon: const Icon(Icons.remove_circle, size: 50),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Produit: ${products[position].name}',
            style: const TextStyle(fontSize: 30),
          ),
          Text(
            'Description: ${products[position].description}',
            style: const TextStyle(fontSize: 30),
          ),
          Text(
            'Prix: ${products[position].price}',
            style: const TextStyle(fontSize: 30),
          ),
          Text(
            'Pays/Origine: ${products[position].origin}',
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const Confirmation();
                  }),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(450, 40),
                backgroundColor: const Color.fromARGB(255, 168, 223, 172),
              ),
              child: const Text(
                'Passer la Commande',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

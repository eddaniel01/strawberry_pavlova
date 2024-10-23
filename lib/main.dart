import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Strawberry Pavlova',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Receta del Strawberry Pavlova'),
        ),
        body: const RecipeLayout(),
      ),
    );
  }
}

class RecipeLayout extends StatelessWidget {
  const RecipeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Columna con la información de la receta
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                // Título y descripción
                RecipeTitle(),
                SizedBox(height: 16),
                // Reseñas (Estrellas y texto)
                RecipeReviews(),
                SizedBox(height: 16),
                // Información de preparación
                RecipeInfo(),
              ],
            ),
          ),
          const SizedBox(width: 16), // Espacio entre la columna de texto y la imagen
          // Imagen de Pavlova
          Expanded(
            flex: 3,
            child: Image.asset(
              'assets/pavlova.webp',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class RecipeTitle extends StatelessWidget {
  const RecipeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Text(
          'Strawberry Pavlova',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
              'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}

class RecipeReviews extends StatelessWidget {
  const RecipeReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        // Estrellas
        Row(
          children: const <Widget>[
            Icon(Icons.star, color: Colors.green),
            Icon(Icons.star, color: Colors.green),
            Icon(Icons.star, color: Colors.green),
            Icon(Icons.star, color: Colors.green),
            Icon(Icons.star, color: Colors.green),
          ],
        ),
        // Reseñas
        const Text(
          '170 Reviews',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class RecipeInfo extends StatelessWidget {
  const RecipeInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        // Tiempo de preparación
        Column(
          children: const <Widget>[
            Icon(Icons.kitchen, color: Colors.green),
            SizedBox(height: 8),
            Text('PREP:'),
            Text('25 min'),
          ],
        ),
        // Tiempo de cocción
        Column(
          children: const <Widget>[
            Icon(Icons.timer, color: Colors.green),
            SizedBox(height: 8),
            Text('COOK:'),
            Text('1 hr'),
          ],
        ),
        // Porciones
        Column(
          children: const <Widget>[
            Icon(Icons.restaurant, color: Colors.green),
            SizedBox(height: 8),
            Text('FEEDS:'),
            Text('4-6'),
          ],
        ),
      ],
    );
  }
}

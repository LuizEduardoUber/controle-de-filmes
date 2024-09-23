import 'package:flutter/material.dart';
import 'movie_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Filmes Assistidos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color.fromARGB(230, 255, 255, 255),
      ),
      home: MovieListPage(),
    );
  }
}

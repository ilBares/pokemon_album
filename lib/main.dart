import 'package:flutter/material.dart';
import 'package:pokemon_album_5f/screens/home_screen.dart';
import 'package:pokemon_album_5f/screens/pokemon_screen.dart';

void main() => runApp(PokemonApp());

class PokemonApp extends StatelessWidget {
  const PokemonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => HomeScreen(),
        '/pokemon_screen' : (context) => PokemonScreen(),
      },
    );
  }
}
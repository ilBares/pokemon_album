import 'package:flutter/material.dart';
import 'package:pokemon_album_5f/components/custom_card.dart';
import 'package:pokemon_album_5f/models/pokemon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Pokemon> album = [
      Pokemon('Pikachu', 'https://tcg.pokemon.com/assets/img/parents-guide/about/en-us/SM11_55.jpg', color: Colors.yellow),
      Pokemon('Charizard', 'https://ex-sephiroth.com/wp-content/uploads/2022/01/Charizard-%C2%B7-Base-Set-BS-4.jpg', color: Colors.redAccent),
      Pokemon('Venusaur', 'https://geeksoncoffee.com/wp-content/uploads/2020/06/Holographic-Shadowless-First-Edition-Venusaur-Card.jpeg', color: Colors.green)
    ];

    // il Container contiene proprietà per la decorazione
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: album.length,
          itemBuilder: (context, index) {
            return _buildItem(context, album[index]);
          },
        )
      ),
    );
  }

  Widget _buildItem(BuildContext context, Pokemon p) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        '/pokemon_screen',
        arguments: p,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        child: CustomCard(p.url),
      ),
    );
  }
}

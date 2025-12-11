import 'package:flutter/material.dart';
import '../shared/widget/card_pokemon.dart';

class DetailPage extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String type;

  const DetailPage({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Column(
        children: [
          Text(name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )
          ),
          Text(type, style: TextStyle(fontSize: 12),)
        ],
      ), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              SizedBox(height: 20),
              
              CardPokemonWidget(
                imageUrl: imageUrl,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.dart';
import 'package:pokedex/screens/home/widgets/details.dart';
import 'package:pokedex/style.dart';

class Home extends StatelessWidget {
  final Pokemon _pokemon = Pokemon(
    name: "Charmander",
    photo: "assets/images/charmander.png",
    description:
        "Tem preferência por coisas quentes. Quando chove, diz-se que o vapor jorra da ponta da cauda.",
    height: "0.6",
    weight: "8.5",
    type: "Fogo",
    abiliity: "Chama",
    weaknesses: [
      "Água",
      "Terra",
      "Rocha",
    ],
  );
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Charmander",
        ),
        backgroundColor: redTheme,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                _pokemon.photo,
              ),
            ),
            Details(_pokemon),
          ],
        ),
      ),
    );
  }
}

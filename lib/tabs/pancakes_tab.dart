import 'package:donut_app_2a_gonzalez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {

  //Lista de donas
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
   ["Natural","I-HOP", "36", Colors.yellow, "lib/images/natural.png"],
   ["Strawberry", "I-HOP", "45", Colors.red, "lib/images/fresahot.png"],
   ["Chocolate", "I-HOP", "84", Colors.brown, "lib/images/chocolate.png"],
   ["Hot-Banana", "I-HOP", "95", Colors.yellow, "lib/images/hotplatano.png"],
   ["Hot-Tower", "I HOP", "60", Colors.brown, "lib/images/hotower.png"],
   ["Hot-Cupcake", "I-HOP", "78", Colors.purple, "lib/images/colores.png"],
   ["Hot-Pay", "I-HOP", "99", Colors.purple, "lib/images/pay.png"],
   ["Hot-Hershey","I-HOP", "81", Colors.yellow, "lib/images/hershey.png"],
  
  ];
  PancakesTab ({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Cuantos elementos tiene
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      //Encargado de organizar la cuadrícula
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //Determina el número de columnas
        crossAxisCount: 2,
        //Relación de aspecto
        childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index){
        //Elemento individual de la cuadrícula
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
        );
      });
  }
}
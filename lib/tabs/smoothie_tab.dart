import 'package:donut_app_2a_gonzalez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {

  //Lista de donas
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
   ["Mango","Starbucks", "36", Colors.yellow, "lib/images/mango.png"],
   ["Strawberry", "Italian Coffee", "45", Colors.pink, "lib/images/fresa.png"],
   ["Banana", "Starbucks", "84", Colors.yellow, "lib/images/smoothplatano.png"],
   ["Peanut Butter", "Italian Coffe", "95", Colors.brown, "lib/images/peanut.png"],
   ["Oreo", "Italian Coffee", "60", Colors.brown, "lib/images/oreo.png"],
   ["Piña-Colada", "Starbucks", "78", Colors.yellow, "lib/images/colada.png"],
   ["Choco", "Starbucks", "99", Colors.brown, "lib/images/choco.png"],
   ["Chamoy","Dairy Queen", "81", Colors.orange, "lib/images/chamoy.png"],

  ];
  SmoothieTab ({super.key});

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
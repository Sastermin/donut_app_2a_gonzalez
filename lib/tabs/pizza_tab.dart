import 'package:donut_app_2a_gonzalez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {

  //Lista de donas
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
   ["Hawaiii","Dominos", "68", Colors.orange, "lib/images/hawai.png"],
   ["Extra extra", "Dominos", "45", Colors.red, "lib/images/extra.png"],
   ["Veggie", "Little Cesars", "84", Colors.purple, "lib/images/vegie.png"],
   ["Pepperoni", "Little Cesars", "95", Colors.brown, "lib/images/pepe.png"],
   ["Margarita", "Dominos", "60", Colors.brown, "lib/images/marga.png"],
   ["Carnívora", "Little Cesars", "78", Colors.purple, "lib/images/carni.png"],
   ["Napolitana", "Little Cesars", "99", Colors.purple, "lib/images/napo.png"],
   ["Champ","Dominos", "81", Colors.blue, "lib/images/champi.png"],
  
  ];
  PizzaTab ({super.key});

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
import 'package:donut_app_2a_gonzalez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {

  //Lista de donas
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
   ["Juice Burger","Burger King", "65", Colors.orange, "lib/images/Juiceburger.png"],
   ["Double Meat", "Burger King", "45", Colors.red, "lib/images/Doblecarne.png"],
   ["Jhony Burger", "Johnny rockets", "66", Colors.yellow, "lib/images/jhonybur.png"],
   ["Choco", "Donkey Donut", "95", Colors.brown, "lib/images/chocolate_donut.png"],
   ["Platano", "Donkey Donut", "60", Colors.brown, "lib/images/chocolate_donut.png"],
   ["Limon", "Krispy Cream", "78", Colors.purple, "lib/images/grape_donut.png"],
   ["Carlos V", "Krispy Cream", "99", Colors.purple, "lib/images/grape_donut.png"],
   ["Crunchy","Krispy Cream", "81", Colors.blue, "lib/images/icecream_donut.png"],

  ];
  BurgerTab ({super.key});

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
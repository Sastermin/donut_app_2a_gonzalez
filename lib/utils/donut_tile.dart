import 'package:flutter/material.dart';
 
class DonutTile extends StatelessWidget {
 final String donutFlavor;
 final String donutPrice;
 final dynamic donutColor;  //dynamic porque será de tipo Color y también usará []
 final String imageName;
 final String donutStore;
 
 const DonutTile({
   super.key,
   required this.donutFlavor,
   required this.donutPrice,
   required this.donutColor,
   required this.imageName, 
   required this.donutStore,
 });
                 
 @override
 Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: Container(
         decoration: BoxDecoration(
              color: donutColor[50],
            borderRadius: BorderRadius.circular(24)),
          child: Column(
            children: [
              //Price Tag
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                    padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                    child: Text(
                      '\$$donutPrice', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 18, 
                        color: donutColor[800])),
                  )
                ],
              ),
              //Donut Picture
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 12
                ),
                child: Image.asset(imageName),
              ),
              //Donut Flavor
              Text(donutFlavor, 
                style: const TextStyle(
                  fontWeight:FontWeight.bold, 
                  fontSize: 18)), 
              //Espacio entre texto
              const SizedBox(
                height: 4,
              ),
              //DonutStore
              Text(donutStore,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.grey[600])),
              //Espacio entre textos
              const SizedBox(height: 4),
              //Love icon + add buton
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: 
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite_border),
                    Icon(Icons.add)
                  ],
                ),
              )

            ],
          ),
        ),
   );
 }
}

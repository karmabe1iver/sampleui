import 'package:flutter/material.dart';

class GridList extends StatelessWidget {
  const GridList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.count(crossAxisCount: 2,
          children: List.generate(details.length, (index){
            return Card(
              child: Column(
                children: [
                  Image.asset(details[index].imag,
                    height: 40,
                  fit: BoxFit.fill,),
                  Text(details[index].name,
                  maxLines: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    
                  ),),
                  Text(details[index].price,
                  style: TextStyle(
                    fontWeight: FontWeight.w100,
                  ),)
                  
                  
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
class Apartment{
  String imag;
  String name;
  String price;
  Apartment({
    required this.imag, required this.name, required this.price
});
}
List<Apartment> details= <Apartment>[
  Apartment(imag: 'lib/asset/irela.jpg', name: 'ROSES EXECUTIVE APARTMENT 3', price: 'from \$300 / week'),

    Apartment(imag: 'lib/asset/irela.jpg', name: 'ROSES EXECUTIVE APARTMENT 3', price:'from \$300 / week'),
  Apartment(imag: 'lib/asset/irela.jpg', name: 'ROSES EXECUTIVE APARTMENT 3', price: 'from \$300 / week'),
  Apartment(imag: 'lib/asset/irela.jpg', name: 'ROSES EXECUTIVE APARTMENT 3', price: 'from \$300 / week')
  
];

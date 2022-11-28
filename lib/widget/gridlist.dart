import 'package:flutter/material.dart';

class GridList extends StatelessWidget {
  //const GridList({Key? key}) : super(key: key);
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    width = size.width;
    height = size.height;

    return //Scaffold(

        Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        children: List.generate(details.length, (index) {
          return Container(
            height: 180,
            width: 150,
            child: Card(
              margin: EdgeInsets.all(6),
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: size.height * .18,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            details[index].imag,
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Text(
                      details[index].name,
                      maxLines: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Text('from'),
                        Text(
                          details[index].price,
                          maxLines: 2,
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.cyan,
                          ),
                        ),
                        Text('/week')
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),

      // ),
    );
  }
}

class Apartment {
  String imag;
  String name;
  String price;

  Apartment({required this.imag, required this.name, required this.price});
}

List<Apartment> details = <Apartment>[
  Apartment(
      imag: 'lib/asset/irela.jpg',
      name: 'ROSES EXECUTIVE APARTMENT 3',
      price: ' \$300 '),
  Apartment(
      imag: 'lib/asset/irela.jpg',
      name: 'ROSES EXECUTIVE APARTMENT 3',
      price: ' \$300 '),
  Apartment(
      imag: 'lib/asset/irela.jpg',
      name: 'ROSES EXECUTIVE APARTMENT 3',
      price: ' \$300 '),
  Apartment(
      imag: 'lib/asset/irela.jpg',
      name: 'ROSES EXECUTIVE APARTMENT 3',
      price: ' \$300 ')
];

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

        //  Padding(
        // padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        //  child:

        GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
      children: List.generate(details.length, (index) {
        return  Container(
            height: double.infinity,
            width: size.width * .5,
            child: Card(
              elevation: 4,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: size.height * .11,
                      width: size.width*.5,
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
                      padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                      child: Text(
                        details[index].name,

                        maxLines: 3,
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child:
                          RichText(
                            maxLines: 3,
                            text: TextSpan(
                              text: 'from',
                                  style: TextStyle(
                                    color: Colors.grey
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                      details[index].price,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      color: Colors.cyan),

                                    ),
                                    TextSpan(
                                      text: '/week',
                                      style: TextStyle(
                                        color: Colors.grey
                                      )
                                    )
                                  ]

                            ),

                          )
                      //Row(
                      //  children: [
                         // Text('from',
                         // maxLines: 2,
                         // overflow: TextOverflow.fade,),
                          //Text(

                          // 'from ${details[index].price} /week ',
                            //maxLines: 2,
                            //overflow: TextOverflow.fade,
                            //style: TextStyle(
                              //fontWeight: FontWeight.w900,
                             // color: Colors.cyan,
                            ),
                          //),
                         // Text('/week',
                         // maxLines: 2,
                         // overflow: TextOverflow.fade,)
                       // ],
                     // ),
                    //)
                  ],
                ),
              ),
            ),

        );
      }),
      // ),

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

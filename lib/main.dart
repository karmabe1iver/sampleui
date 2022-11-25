import 'package:flutter/material.dart';
import 'package:sampleui/widget/choicechipCountry.dart';
import 'package:sampleui/widget/choicechipCountryM.dart';
import 'package:sampleui/widget/gridlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const
           //Gri
          //ChoicechipCountry(),
          MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.only(
        left: 28.0,
        top: 28,
        right: 28,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              SizedBox(
                child: Image.asset(
                  'lib/asset/home_png.png',
                  height: 50,
                  width: 50,
                ),
              ),
              Spacer(),
              SizedBox(
                child: Image.asset(
                  'lib/asset/acnt_png.png',
                  height: 35,
                  width: 35,
                ),
              ),
            ],
          ),
          Text(
            'Feel At Home Offers you the ',
            style: TextStyle(fontWeight: FontWeight.w100, fontSize: 16),
          ),
          Text(
            'Best level of comfort !!!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(
              height: 20,
          ),
          Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Image.asset('lib/asset/search.png',
                        height: 30,
                        width: 30,
                      fit: BoxFit.fill,),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextField(
                          decoration: InputDecoration(
                            //icon: Icon( Icons.search),
                            border: InputBorder.none,
                            hintText: 'Search',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Expanded(
            child: Container(
                height: 200,//
                child: ChoicechipCountryN()),
           ),
          Expanded(child: GridList()),
        ],
      ),
    )));
  }
}

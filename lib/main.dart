import 'package:flutter/material.dart';
import 'package:sampleui/widget/choicechipCountry.dart';

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
                  height: 30,
                  width: 30,
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
          Padding(
            padding: const EdgeInsets.only(top: 28.0, left: 30),
            child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    Image.asset('lib/asset/search.png'),
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
                )),
          ),
          Expanded(
              flex: 1,
              child:
           ChoicechipCountry()
    ),
        ],
      ),
    )));
  }
}

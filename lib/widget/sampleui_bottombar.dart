import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SampleUiBottombar extends StatelessWidget {
  const SampleUiBottombar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar
        :Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),),
        child: BottomNavigationBar(
            showSelectedLabels: true,
              selectedItemColor: Colors.grey,
              selectedFontSize: 15,


              items: [
      BottomNavigationBarItem(icon: Image.asset('lib/asset/icon1.png',
      height: 15,),
      label: "home"),
      BottomNavigationBarItem(icon: Image.asset('lib/asset/icon2.png',
          height: 15,),
      label: 'Search'),
      BottomNavigationBarItem(icon: Image.asset('lib/asset/icon3.png',
          height: 15,),
      label: 'profile'),

    ]
          ),




        ),
    );
  }
}

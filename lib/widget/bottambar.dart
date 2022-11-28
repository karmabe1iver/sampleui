import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 4.0,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        // child:(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'lib/asset/icon1.png',
                  height: 15,
                )),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'lib/asset/icon2.png',
                  height: 15,
                )),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'lib/asset/icon3.png',
                  height: 15,
                ))
          ],
        ),
      ),
    );
  }
}

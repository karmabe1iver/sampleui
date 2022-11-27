import 'package:flutter/material.dart';

class ChoicechipCountry extends StatefulWidget {
  const ChoicechipCountry({Key? key}) : super(key: key);

  @override
  State<ChoicechipCountry> createState() => _ChoicechipCountryState();
}

class _ChoicechipCountryState extends State<ChoicechipCountry> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       // Container(
         //   margin: EdgeInsets.symmetric(vertical: 20.0),
        //child:
      ListView.builder(
          scrollDirection: Axis.horizontal,
            itemBuilder: (context, Index) {
          return Container(
            child: ChoiceChip(
              label: Container(width: 60, child: Text(selector[Index].Countryname)),
              selected: _value == Index,
              avatar: CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: Image.asset(selector[Index].Img,
                      height: 30, width: 30, fit: BoxFit.cover),
                ),
              ),
              backgroundColor: Colors.white,
              selectedColor: Colors.cyan,
              onSelected: (bool value) {
                setState(() {
                  _value = (value ? Index : null)!;
                });
              },
            ),
          );
            },
            itemCount: selector.length,
          ),

      ],
    );
  }
}

class ChipDetials {
  String Img;
  String Countryname;

  ChipDetials({
    required this.Img,
    required this.Countryname,
  });
}

List<ChipDetials> selector = <ChipDetials>[
  ChipDetials(Img: 'lib/asset/candaimage.jpeg', Countryname: 'canada'),
  ChipDetials(Img: 'lib/asset/austa.jpg', Countryname: 'uk'),
  ChipDetials(Img: 'lib/asset/irela.jpg', Countryname: 'ireland'),
  ChipDetials(Img: 'lib/asset/irela.jpg', Countryname: 'australia')
];

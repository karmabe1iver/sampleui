import 'package:flutter/material.dart';

class ChoicechipCountry extends StatefulWidget {
  const ChoicechipCountry({Key? key}) : super(key: key);

  @override
  State<ChoicechipCountry> createState() => _ChoicechipCountryState();
}

class _ChoicechipCountryState extends State<ChoicechipCountry> {
  var size, width, height;
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    width = size.width;
    height = size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: size.height * .12,
            child: ListView.builder(
              itemBuilder: (context, Index) {
                return ChoiceChip(
                  label: Container(
                      width: size.width * .12,
                      height: 18,
                      child: Text(selector[Index].Countryname,textAlign: TextAlign.justify,)),
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
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: selector.length,
            ),
          )
          // )
        ],
      ),
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
  ChipDetials(
      Img: //' lib/asset/ukimage.webp'
          'lib/asset/irela.jpg',
      Countryname: 'australia')
];

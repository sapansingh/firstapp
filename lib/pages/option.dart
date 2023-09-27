import 'package:firstapp/pages/health108.dart';

import 'package:flutter/material.dart';

class Optiondata {
  late String title;
  late IconData icon;
  late String rout;
  late Widget routwin;
  Optiondata({required this.title, required this.icon, required this.routwin});
}

// ignore: must_be_immutable
class options_t extends StatelessWidget {
  late List<Optiondata> newlistdata = [
    Optiondata(title: "108", icon: Icons.card_giftcard, routwin: health_108()),
    Optiondata(title: "112", icon: Icons.card_giftcard, routwin: health_108())
  ];

  options_t({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: newlistdata.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 2),
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => newlistdata[index].routwin));
              },
              child: Container(
                  margin: EdgeInsets.all(8),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8)),
                  child: Card(
                      color: Colors.amberAccent,
                      child: Center(
                          child: Text(
                        newlistdata[index].title,
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.w900),
                      )))));
        });
  }
}




// vehicle number update function here

// ignore: camel_case_types


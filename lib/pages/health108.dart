import 'package:firstapp/pages/vehicle_updates.dart';
import 'package:firstapp/pages/vehicledetails.dart';
import 'package:flutter/material.dart';

class health108obj {
  late String title;
  late IconData icns;
  late Widget routr;

  health108obj({required this.title, required this.icns, required this.routr});
}

// ignore: must_be_immutable
class health_108 extends StatelessWidget {
  List<health108obj> newr = [
    health108obj(
        title: "vehicle details", icns: Icons.details, routr: Vehicle_update())
  ];

  health_108({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Health 108 IT Management"),
      ),
      body: GridView.builder(
          itemCount: newr.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 50, crossAxisSpacing: 50),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Vehicledetails()));
              },
              child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  margin: EdgeInsets.all(8),
                  child: Card(
                    color: Colors.amber,
                    child: Center(
                      child: Text(newr[index].title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900)),
                    ),
                  )),
            );
          }),
    );
  }
}

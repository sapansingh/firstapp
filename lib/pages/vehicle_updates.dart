import 'dart:convert';

import 'package:firstapp/pages/Update_vehicle.dart';
import 'package:firstapp/pages/apidata.dart';
import 'package:firstapp/pages/vehicle_datamodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Vehicle_update extends StatefulWidget {
  const Vehicle_update({super.key});

  @override
  State<Vehicle_update> createState() => _Vehicle_updateState();
}

class _Vehicle_updateState extends State<Vehicle_update> {
  late List<Vehicle_Number> vehicleupdates = [];
  late List<Vehicle_Number> vehiclenews = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Loader();
  }

  Loader() async {
    final response = await http.get(Uri.parse(Api().getvehicleapi));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final data = jsonDecode(response.body.toString());
      vehicleupdates =
          List.from(data).map((e) => Vehicle_Number.fromMap(e)).toList();

      setState(() {});
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load vehicle_number');
    }
  }

  void _findtect(String val) {
    vehiclenews = vehicleupdates
        .where((element) =>
            element.vehicle_number.toLowerCase().contains(val.toLowerCase()))
        .toList();

    setState(() {});
  }

  late TextEditingController vehicle_no1contr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vehicle Number")),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: vehicle_no1contr,
            onChanged: (value) => _findtect(value),
            decoration: InputDecoration(
                border: OutlineInputBorder(), label: Text("Enter Vehicle No")),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: vehiclenews.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Update_v(
                                  vehicle_no: vehiclenews[index]
                                      .vehicle_number
                                      .toString(),
                                  contact: vehiclenews[index]
                                      .contact_number
                                      .toString(),
                                  alternate_number: vehiclenews[index]
                                      .alternate_contact
                                      .toString(),
                                )));
                  },
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.car_repair, color: Colors.amber),
                      title: Text(vehiclenews[index].vehicle_number),
                      subtitle: Text(vehiclenews[index].location +
                          "(" +
                          vehiclenews[index].contact_number +
                          ")"),
                      trailing: Icon(
                        Icons.update,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

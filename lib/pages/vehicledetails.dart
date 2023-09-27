import 'package:firstapp/pages/vehiclealldetails.dart';
import 'package:firstapp/pages/vehicledatam.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Vehicledetails extends StatefulWidget {
  const Vehicledetails({super.key});

  @override
  State<Vehicledetails> createState() => _VehicledetailsState();
}

class _VehicledetailsState extends State<Vehicledetails> {
  late List<Vehicledetailss> newdatalits = [];
  late List<Vehicledetailss> newdatalitss = [];

  Vehicleloader() async {
    final response = await http.get(Uri.parse(
        'http://192.168.10.224/gvkprod/v2/app/mobileapi/vehicle_details.php'));
    var decdata = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      newdatalits =
          List.from(decdata).map((e) => Vehicledetailss.fromJson(e)).toList();
      setState(() {});
    } else {
      throw Exception("ddd");
    }
  }

  void _vehdata(String valr) {
    if (newdatalits.isEmpty) {
      newdatalitss = newdatalits;
    } else {
      newdatalitss = newdatalits
          .where((element) =>
              element.vehicle_no.toLowerCase().contains(valr.toLowerCase()))
          .toList();
      setState(() {});
    }
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    Vehicleloader();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("vehicle details"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.all(8),
            child: TextField(
                onChanged: (value) {
                  _vehdata(value);
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    label: Text("Enter Vehicle number"))),
          ),
          SizedBox(height: 8),
          Expanded(
              child: ListView.builder(
                  itemCount: newdatalitss.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.amber,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => VehicleallDetails(
                                      newdatalitss[index].vehicle_no,
                                      newdatalitss[index].status,
                                      newdatalitss[index].contact_number,
                                      newdatalitss[index].alternate_contact,
                                      newdatalitss[index].location_name,
                                      newdatalitss[index].district,
                                      newdatalitss[index].mandalname,
                                      newdatalitss[index].zone,
                                      newdatalitss[index].emename,
                                      newdatalitss[index].ememobno,
                                      newdatalitss[index].pmname,
                                      newdatalitss[index].pmmobno,
                                      newdatalitss[index].rmname,
                                      newdatalitss[index].rmmobno))));
                        },
                        child: ListTile(
                          leading: Icon(Icons.details),
                          title: Text(newdatalitss[index].vehicle_no),
                          subtitle: Text(newdatalitss[index].location_name +
                              "(" +
                              newdatalitss[index].emename +
                              ")"),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}

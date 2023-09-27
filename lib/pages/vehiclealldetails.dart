import 'package:flutter/material.dart';

class VehicleallDetails extends StatelessWidget {
  String vehicle_no;
  String status;
  String contact_number;
  String alternate_contact;
  String location_name;
  String district;
  String mandalname;
  String zone;
  String emename;
  String ememobno;
  String pmname;
  String pmmobno;
  String rmname;
  String rmmobno;

  VehicleallDetails(
      this.vehicle_no,
      this.status,
      this.contact_number,
      this.alternate_contact,
      this.location_name,
      this.district,
      this.mandalname,
      this.zone,
      this.emename,
      this.ememobno,
      this.pmname,
      this.pmmobno,
      this.rmname,
      this.rmmobno,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(vehicle_no)),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Text("Vehicle Number:",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 25)),
                  Text(vehicle_no,
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                          color: Colors.deepPurple)),
                ],
              ),
              Row(
                children: [
                  Text("status:",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 25)),
                  Text(status,
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                          color: Colors.deepPurple)),
                ],
              ),
              Row(
                children: [
                  Text("contact_number:",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 25)),
                  Text(contact_number,
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                          color: Colors.deepPurple)),
                ],
              ),
              Row(
                children: [
                  Text("alternate_contact :",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 25)),
                  Text(alternate_contact,
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                          color: Colors.deepPurple)),
                ],
              ),
              Row(
                children: [
                  Text("Vehicle Number:",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 25)),
                  Text(vehicle_no,
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                          color: Colors.deepPurple)),
                ],
              ),
              Row(
                children: [
                  Text("Vehicle Number:",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 25)),
                  Text(vehicle_no,
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                          color: Colors.deepPurple)),
                ],
              ),
              Row(
                children: [
                  Text("Vehicle Number:",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 25)),
                  Text(vehicle_no,
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                          color: Colors.deepPurple)),
                ],
              )
            ],
          ),
        ));
  }
}

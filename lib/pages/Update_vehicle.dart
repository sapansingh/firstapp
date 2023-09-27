import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Update_v extends StatefulWidget {
  String contact;
  String alternate_number;
  String vehicle_no;
  Update_v(
      {required this.contact,
      required this.alternate_number,
      required this.vehicle_no});

  @override
  State<Update_v> createState() => _Update_vState();
}

class _Update_vState extends State<Update_v> {
  @override
  Widget build(BuildContext context) {
    final text_edit1 = TextEditingController();
    final text_edit2 = TextEditingController();

    setState(() {
      text_edit1.text = widget.contact;
      text_edit2.text = widget.alternate_number;
    });
    return Scaffold(
      appBar: AppBar(title: Text(widget.vehicle_no)),
      body: Column(children: [
        SizedBox(
          height: 10,
        ),
        TextField(
          controller: text_edit1,
          decoration: InputDecoration(
            label: Text("Contact number"),
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          controller: text_edit2,
          decoration: InputDecoration(
            label: Text("alternate number"),
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        ElevatedButton(onPressed: () {}, child: Text("Update"))
      ]),
    );
  }
}

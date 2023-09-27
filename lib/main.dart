import 'package:firstapp/pages/drawer_t.dart';
import 'package:firstapp/pages/option.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("IT MANAGEMENT"),
      ),
      body: options_t(),
      drawer: drawer_t(),
    ));
  }
}

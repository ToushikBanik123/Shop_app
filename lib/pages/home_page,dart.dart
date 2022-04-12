import 'package:flutter/material.dart';
import 'package:p_app/utils/const.dart';
import 'package:p_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("My App"),
        ),
      ),
      drawer: const appdrawer(),
    );
  }
}
import 'package:flutter/material.dart';

class ChoosLocation extends StatefulWidget {
  @override
  _ChoosLocationState createState() => _ChoosLocationState();
}

class _ChoosLocationState extends State<ChoosLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Location'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Choose Location'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Center(
              child: RaisedButton.icon(
                  onPressed: () {
                    setState(() {
                      counter += 1;
                    });
                  },
                  icon: Icon(Icons.add),
                  label: Text('Add'))),
          Center(
            child: Text(counter.toString()),
          )
        ],
      ),
    );
  }
}

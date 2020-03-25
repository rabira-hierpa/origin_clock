import 'package:flutter/material.dart';

class ChoosLocation extends StatefulWidget {
  @override
  _ChoosLocationState createState() => _ChoosLocationState();
}

class _ChoosLocationState extends State<ChoosLocation> {
  int counter = 0;

  void getData() async{
    // Future in flutter is similar to promises in JavaScript
    String username = await Future.delayed(Duration(seconds: 3),(){
      return 'Getting user name: Yosi';
    });

    String bio = await Future.delayed(Duration(seconds: 3),(){
      return 'Getting user bio: designer, musician & developer';
    });

    print('statment');

  }

  @override
  void initState() {
    super.initState();
    getData();

  }
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
            child: RaisedButton.icon(onPressed: (){
              setState(() {
                counter +=1;
              });
            }, icon: Icon(Icons.add), label: Text('Add'))
          ),
          Center(
            child: Text(counter.toString()),
          )
        ],
      ),
    );
  }
}

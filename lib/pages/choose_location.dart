import 'package:flutter/material.dart';

class ChoosLocation extends StatefulWidget {
  @override
  _ChoosLocationState createState() => _ChoosLocationState();
}

class _ChoosLocationState extends State<ChoosLocation> {
  int counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState method ran');
  }
  @override
  Widget build(BuildContext context) {

    print('build method ran');
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

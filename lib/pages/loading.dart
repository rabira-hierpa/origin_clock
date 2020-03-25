import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async{
    // Future in flutter is similar to promises in JavaScript
    String username = await Future.delayed(Duration(seconds: 3),(){
      return 'Getting user name: Yosi';
    });

    String bio = await Future.delayed(Duration(seconds: 3),(){
      return 'Getting user bio: designer, musician & developer';
    });

    print('$username - $bio');

  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Loading screen'),
      ),
    );
  }
}

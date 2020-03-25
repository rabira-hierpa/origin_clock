import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async{
   Response response = await get('https://jsonplaceholder.typicode.com/todos/1');
   //print(response.body);// prints a JSON String and this must buy converted to a MAP with jsonDecode
    Map resData = jsonDecode(response.body);
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

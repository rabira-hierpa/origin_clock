import 'package:flutter/material.dart';
import 'package:origin_clock/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String initTime = 'loading';

  void setupWorldTimer() async {
    WorldTimer init = WorldTimer(
        location: 'Addis Ababa', flag: 'addis.png', url: 'Africa/Addis_Ababa');
    await init.getTime();
    setState(() {
      initTime = init.time;
    });
    Navigator.pushNamed(context, '/home', arguments: {
      'location': init.location,
      'time': init.time,
      'flag': init.flag
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(28.0),
        child: Row(
          children: <Widget>[Text(initTime)],
        ),
      ),
    ));
  }
}

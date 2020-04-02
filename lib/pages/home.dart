import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map timeData = {};
  @override
  Widget build(BuildContext context) {
    timeData = ModalRoute.of(context).settings.arguments;

    // Set background image
    String bgImg = timeData['isDayTime'] ? 'day.png' : 'night.png';
    Color bgColor = timeData['isDayTime'] ? Colors.blue : Color.fromARGB(255, 40, 39, 97);
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/$bgImg'),
              fit: BoxFit.cover
            )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      timeData['location'],
                      style: TextStyle(
                          fontSize: 36,
                          letterSpacing: 2,
                          color: timeData['isDayTime'] ? Colors.black : Colors.white
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  timeData['time'],
                  style: TextStyle(
                      fontSize: 72,
                      color: timeData['isDayTime'] ? Colors.black : Colors.white
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/location');
        },
        child: Icon(
          Icons.edit_location,
          size: 35,
        ),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}

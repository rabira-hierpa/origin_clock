import 'package:flutter/material.dart';
import 'package:origin_clock/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTimer> locations = [
    WorldTimer(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTimer(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTimer(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTimer(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTimer(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTimer(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTimer(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTimer(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Choose Location'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context,index){
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/img/' + locations[index].flag, width:50,height: 40,),
                  SizedBox(width: 8.0,),
                  Text(locations[index].location)
                ],
              ),
            ),
          );
        },
      )
    );
  }
}

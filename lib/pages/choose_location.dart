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

  void updateTime(index) async{
    WorldTimer instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDayTime': instance.isDaytime
    });
  }

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
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
              child: Card(
                  child: ListTile(
                      onTap: () {
                        updateTime(index);
                      },
                      title: Text(locations[index].location),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/img/${locations[index].flag}'),
                      ))),
            );
          },
        ));
  }
}

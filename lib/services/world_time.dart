import 'dart:convert';
import 'package:http/http.dart';
import 'package:origin_clock/pages/base_api.dart';

class WorldTimer {
  String location; // location for the time
  String time; // time in the given location
  String flag; // url to asset  flag icon
  String url; // location url for api

  WorldTimer({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      Response timeResponse = await get('$apiBase/$url');
      Map data = jsonDecode(timeResponse.body);

      String dataTime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      // Create dataTime object
      DateTime now = DateTime.parse(dataTime);
      now = now.add(Duration(hours: int.parse(offset)));
      // Set time property
      time = now.toString();
    } catch (e) {
      // exception message
      print("EXECPTION CAUGHT: $e");
      time = 'Could not get time url';
    }
  }
}

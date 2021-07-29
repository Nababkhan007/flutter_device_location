import 'package:flutter/material.dart';
import 'package:flutter_device_location/ui/location/current_location_screen.dart';

void main() => runApp(DeviceLocation());

class DeviceLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.amber,
        primaryColor: Colors.red,
      ),
      home: CurrentLocationScreen(),
    );
  }
}

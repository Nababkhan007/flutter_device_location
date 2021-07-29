import 'package:flutter/material.dart';

void main() => runApp(DeviceLocation());

class DeviceLocation extends StatefulWidget {
  @override
  _DeviceLocationState createState() => _DeviceLocationState();
}

class _DeviceLocationState extends State<DeviceLocation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.amber,
        primaryColor: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Device Location",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Container(),
      ),
    );
  }
}

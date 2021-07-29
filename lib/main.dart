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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Get device location",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Icon(
                Icons.location_on,
                size: 22.0,
                color: Colors.red,
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: _getDeviceLocation(),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.red,
                  ),
                ),
                child: Text(
                  "Tap Here",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _getDeviceLocation() {}
}

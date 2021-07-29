import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:geocoding/geocoding.dart';
import 'package:flutter_device_location/helper/location_helper.dart';
import 'package:flutter_device_location/ui/location/component/current_location_body.dart';

class CurrentLocationSection extends StatefulWidget {
  @override
  _CurrentLocationSectionState createState() => _CurrentLocationSectionState();
}

class _CurrentLocationSectionState extends State<CurrentLocationSection> {
  String _currentLocation = "";

  @override
  Widget build(BuildContext context) {
    return CurrentLocationBody(
      currentLocation: _currentLocation,
      onPressed: () => _getDeviceLocation(),
    );
  }

  _getDeviceLocation() async {
    try {
      LocationData locationData = await LocationHelper.getDeviceLocation();
      List<Placemark> placeMarkList = await placemarkFromCoordinates(
          locationData.latitude, locationData.longitude);
      setState(() {
        locationData != null
            ? _currentLocation =
                "Address: ${placeMarkList[0].name}, ${placeMarkList[0].country}\n "
                    "Latitude: ${locationData.latitude.toString()}, "
                    "Longitude: ${locationData.longitude.toString()}"
            : _currentLocation = "";
      });
    } catch (exception) {
      throw exception;
    }
  }
}

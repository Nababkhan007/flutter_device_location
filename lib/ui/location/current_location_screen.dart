import 'package:flutter/material.dart';
import 'package:flutter_device_location/helper/text_helper.dart';
import 'package:flutter_device_location/ui/location/component/custom_app_bar.dart';
import 'package:flutter_device_location/ui/location/component/current_location_section.dart';

class CurrentLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: TextHelper.DEVICE_LOCATION,
      body: CurrentLocationSection(),
    );
  }
}

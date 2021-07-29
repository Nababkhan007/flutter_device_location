import 'package:flutter/material.dart';

class CurrentLocationBody extends StatelessWidget {
  final String currentLocation;
  final VoidCallback onPressed;

  const CurrentLocationBody({
    this.currentLocation,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
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
            height: 5.0,
          ),
          Text(
            currentLocation,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.redAccent,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: onPressed,
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
    );
  }
}

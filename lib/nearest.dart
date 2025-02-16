import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class NearestPage extends StatefulWidget {
  @override
  _NearestPageState createState() => _NearestPageState();
}

class _NearestPageState extends State<NearestPage> {
  // Google Maps Controller
  // late GoogleMapController _mapController;

  // Initial map position (you can set this to the user's current location)
  // final LatLng _initialPosition = const LatLng(37.7749, -122.4194); // Example: San Francisco

  // // Marker for the nearest bin
  // final Set<Marker> _markers = {
  //   const Marker(
  //   //   markerId: const MarkerId('nearest_bin'),
  //   //   position: const LatLng(37.7749, -122.4194), // Example: Nearest bin location
  //   //   infoWindow: const InfoWindow(title: 'Nearest Recycling Bin'),
  //   ),
  // };

  // Function to open navigation apps
  void _openNavigationApp(String url) async {
    // if (await canLaunch(url)) {
    //   await launch(url);
    // } else {
    //   throw 'Could not launch $url';
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nearest Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Add settings button functionality here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Section 1: Title with black background
          Container(
            color: Colors.black,
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'Find Nearest Bin',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          // Section 2: Map with GPS
          // Expanded(
          //   // child: GoogleMap(
          //   //   initialCameraPosition: CameraPosition(
          //   //     target: _initialPosition,
          //   //     zoom: 14.0,
          //   //   ),
          //     // markers: _markers,
          //     // onMapCreated: (GoogleMapController controller) {
          //     //   _mapController = controller;
          //     // },
          //     myLocationEnabled: true, // Enable user's current location
          //     myLocationButtonEnabled: true, // Show "my location" button
          //   ),
          // ),

          // Section 3: Links to navigate to the bin
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Google Maps URL
                    // const url =
                    //     'https://www.google.com/maps/dir/?api=1&destination=37.7749,-122.4194'; // Replace with your bin's coordinates
                    // _openNavigationApp(url);
                  },
                  child: const Text('Google Maps'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Apple Maps URL
                    // const url =
                    //     'https://maps.apple.com/?daddr=37.7749,-122.4194'; // Replace with your bin's coordinates
                    // _openNavigationApp(url);
                  },
                  child: const Text('Apple Maps'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Waze URL
                    // const url =
                    //     'https://waze.com/ul?ll=37.7749,-122.4194&navigate=yes'; // Replace with your bin's coordinates
                    // _openNavigationApp(url);
                  },
                  child: const Text('Waze'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
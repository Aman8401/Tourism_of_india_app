// import 'package:geolocator/geolocator.dart';
//
// class LocationController {
//   late bool servicePermission = false;
//   late LocationPermission permission;
//
//   Future<Position> currentLocation() async {
//     servicePermission = await Geolocator.isLocationServiceEnabled();
//     if (!servicePermission) {
//       print("Location Declined");
//     }
//
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//     }
//     return await Geolocator.getCurrentPosition();
//   }
// }

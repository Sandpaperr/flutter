import 'package:geolocator/geolocator.dart';

class Location {
  double _latitude = 0.0;
  double _longitude = 0.0;

  Future<void> getCurrentLocation() async{
    try {
      LocationPermission permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied){
        permission = await Geolocator.requestPermission();
      } else if (permission == LocationPermission.deniedForever){
        throw 'permission denied forever. Location will be set to 0.00, 0.00';
      }
      Position position = await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(
      accuracy: LocationAccuracy.low));
      _latitude = position.latitude;
      _longitude = position.longitude;
    }
    catch(e){
      print(e);
      _latitude = 0.0;
      _longitude = 0.0;
    }


  }

  double get latitude => _latitude;
  double get longitude => _longitude;
}
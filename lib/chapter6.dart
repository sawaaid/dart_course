const convertToKilometers = 1.60934;
const convertToMiles = 0.62137119;
class Travel {
 late double distance;
 Travel(double newDistance) {
 distance = newDistance;
 }

 Future<double> distanceToMiles() async{ 
  await Future.delayed(Duration(seconds: 3));
 return distance * convertToMiles;
 }
 double distanceToKilometers() {
 return distance * convertToKilometers;
 }
}
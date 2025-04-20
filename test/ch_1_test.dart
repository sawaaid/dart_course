import 'package:ch_1/chapter6.dart';
import 'package:test/test.dart';

Future <double> _loadResource(int testDelay) async {
 try {
 await Future.delayed(Duration(seconds: testDelay));
 return 10.0;
 } catch (e) {
 print(e);
 return 0.0;
 }
}
void main() {
 test('Travel Distance Delay', () async {
 // Arrange
 int customDelay = 5;
 var distance = await _loadResource(customDelay);
 var expectedDistance = distance;
 // Act
 var travel = Travel(expectedDistance);
 var result = travel.distance;
 // Assert
 expect(expectedDistance, result);
 });
}
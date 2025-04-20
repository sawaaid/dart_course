class FutureClass {
  void main() async {
 int myDelay = 5;
 
 print ('Hello');
 
 var value =  await (myDelay);
 var customText = myDelay == 1 ? "second later": "seconds later";
 
 print ('Its $value $customText');
}
Future <int> _customDelay(int delay) async {
 try {
 await Future.delayed(Duration(seconds: delay));
 return delay;
 } catch (e) {
 print(e);
 return delay;
 }
}

}

class FunctionsClass{
void main() {
//حساب راتب موظف حسب أيام دوامه
//يعطى راتب الموظف وأيام دوامه الفعلية والشهر
const List<String> products = ["براد", "غسالة", "فرن", "سخان", "فلتر"];
  const List<int> prices = [300, 285, 150, 20, 100];
  const List<double> sale = [0, 0.1, 0, 0, 0.3];
  printProductPrices(products: products, prices: prices, sale: sale);
double realSalary=getSalary(fullSalary: 250,workDays: 20,monthNum: 3);
print ("realSalary is $realSalary");
}
 
double getSalary({required fullSalary,workDays,monthNum}){
  
  const List workDaysForMonths=[22,21,23,20,18];
  double activeSalary=fullSalary*workDays/workDaysForMonths[monthNum-1];
  return activeSalary;
}
void printProductPrices({
  required List<String> products,
  required List<int> prices,
  required List<double> sale,
}) {
  for (int i = 0; i < products.length; i++) {
    String product = products[i];
    int price = prices[i];
    double discount = sale[i];
    if (discount > 0) {
      double price2 = price - (price * discount);
      print("المنتج: $product، السعر1: $price، السعر2: ${price2.toStringAsFixed(2)}");
    } else {
      print("المنتج: $product، السعر: $price");
    }
  }
}


}
// 1
// void main() {
//   List prices = [12, 20.3, 14, 15];
//   List books_name = ["flutter", "java", "laravel", "kotlin"];
//   List quantities = [12, 20.3, 14, 15];
//   var max = prices[0] * quantities[0];
//   var index;
//   for (int i = 0; i < prices.length; i++) {
//     if (max < prices[i] * quantities[i]) {
//       max = prices[i] * quantities[i];
//       index = i;
//     }
//   }
//   print("book is max :${books_name[index]}");
//   //book is max :java
// }

// 2
// void main() {
//   List prices = [12, 20.3, 14, 15];
//   List books_name = ["flutter", "java", "laravel", "kotlin"];
//   List quantities = [12, 20.3, 14, 15];
//   double min = 0;
//   int index = 0;
//   for (int i = 0; i < prices.length; i++) {
//     if (min > prices[i] * quantities[i]) {
//       min = prices[i] * quantities[i];
//       index = i;
//     }
//   }
//   print("book is max :${books_name[index]}");
//   // output: book is max :flutter
// }

// 3
// void main() {
//   List prices = [12, 20, 14, 15];
//   int count = 0;
//   for (int i = 0; i < prices.length; i++) {
//     if (prices[i]%2 == 0)
//     count++;
//
//   }
//   print("count is $count");
//   // output: count is 3
// }

// 4
// void main() {
//   List prices = [12, 20, 14, 15];
//   int count = 0;
//   for (int i = 0; i < prices.length; i++) {
//     if (prices[i] > prices[i - 1])
//     count++;
//
//   }
//   print("count is $count");
//   // output: error
// }

// 5
// void main() {
// print(getMinutes(minutes: 45));
// print(getMinutes());
// print(getMinutes(hours: 3));
// print(getMinutes(hours: 3,minutes: 15));
// // output:45
// // 0
// // 180
// // 195
// }
//
// getMinutes({hours = 0,minutes = 0}){
//   return hours*60 + minutes;
// }

// 6
// void main() {
//   print(calculateDaysInYear());
//   print(calculateDaysInYear(endDay: 31,endMonth: 1));
//   print(calculateDaysInYear(endDay: 1,endMonth: 2,firstDay: 31,firstMonth: 1));
//   print(calculateDaysInYear(endDay: 12,endMonth: 3,firstDay: 1,firstMonth: 3));
//
// // output:
// // 364
// // 30
// // 1
// }
//
// calculateDaysInYear(
//     {int firstDay = 1,
//     int firstMonth = 1,
//     int endDay = 30,
//     int endMonth = 12}) {
//   const List<int> dayOfMonths = [
//     31,
//     29,
//     31,
//     30,
//     31,
//     30,
//     31,
//     31,
//     30,
//     31,
//     30,
//     31
//   ];
//   int days = 0;
//
//   if(firstMonth != endMonth) {
//     for (int i = firstMonth -1 +1 ; i < endMonth -1; i++) {
//     days += dayOfMonths[i];
//   }
//     days += dayOfMonths[firstMonth - 1] - firstDay ;
//     days += endDay;
//   }
//   else{
//     days += endDay - firstDay ;
//   }
//
//   return days;
// }
calculateDiffernceDays(String date1,String date2){
  List first=date1.split("-");
  DateTime firstDate=DateTime(int.parse(first[0]),int.parse(first[1]),int.parse(first[2]));
  List end=date2.split("-");
  DateTime endDate=DateTime(int.parse(end[0]),int.parse(end[1]),int.parse(end[2]));
  int days=firstDate.difference(endDate).inDays.abs();
  print("days between $date1 and $date2 is $days");
}
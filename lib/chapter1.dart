class Chapter1 {
  void calculatePrice() {
    int quantity = 35;
    double price = 20.1;
    double all = quantity * price;
    print(all);
  }
  void calculateOnePrice() {
  int quantity = 60;
  int all = 90; 
  double price = all / quantity;
  print(price);
}
void calculateDaysInYear1() {
 var daysInYear;
 daysInYear = 12 * 30;
 print('There are $daysInYear days in a year');
}
void calculateDaysInYear2() {
  int months = 12;
 var daysInYear = months * 30;
 print('There are $daysInYear days in a year');
}
void nullFcn(){
  int? myVariable;
  print('Value: $myVariable');

}



}

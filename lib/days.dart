const int weekDays=7;
class DaysLeft {
  int currentDay = 0;
  DaysLeft() {
    print("constructor called");
    currentDay = DateTime.now().weekday;
  }
  weekDaysLeft() {
    return weekDays - currentDay;
  }
}

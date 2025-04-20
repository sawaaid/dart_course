class Person{
  String name;
  int age;
  String subject;
  double salary;
  // Constructor in short form
  Person(this.name, this.age, this.subject, this.salary);
  // display method
  void display(){
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Subject: ${this.subject}");
    print("Salary: ${this.salary}");
  }
}

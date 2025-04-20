
import 'dart:core';

// هذا الكلاس هو الأساس الذي يحتوي على المعلومات العامة لأي شخص
// تم تعريفه كـ abstract لأنه لا نريد إنشاء كائنات منه مباشرةً، بل من الكلاسات التي ترث منه
abstract class Person {
  // الخصائص الأساسية التي يجب أن يمتلكها أي شخص
  int? id;
  String? name;
  String? phone;
  String? sex;

  // المتغير idIncrementer يستخدم لزيادة الرقم التعريفي لكل كائن جديد، وتم تعريفه كـ private و static
  static int _idIncrementer = 0;

  // الكونستركتور الرئيسي لتعيين القيم للخصائص، حيث يتم زيادة id في كل مرة يتم فيها إنشاء كائن جديد
  Person(this.name, this.phone, this.sex) {
    _idIncrementer++;
    id = _idIncrementer;
  }
}
// هذا الكلاس يحتوي على المعلومات الأساسية لأي زبون
// يرث من كلاس Person لأن الزبون يعتبر شخصًا عاديًا لكن يمتلك خاصية إضافية هي email
class Client extends Person {
  // الخاصية الإضافية التي تخص الزبون فقط
  String email;

  // الكونستركتور الرئيسي لتعريف القيم للخصائص بما فيها الخاصية الموروثة
  Client({
    required String? name,
    required String? phone,
    required String? sex,
    required this.email,
  }) : super(name, phone, sex);
}
// هذا الكلاس يحتوي على المعلومات الأساسية لأي موظف
// يرث من كلاس Person لأن الموظف يعتبر شخصًا عاديًا لكن يمتلك خصائص إضافية هي salary و workingTime
class Employee extends Person {
  // الخصائص الإضافية التي تخص الموظف فقط
  double salary;
  String workingTime;

  // الكونستركتور الرئيسي لتعريف القيم للخصائص بما فيها الخصائص الموروثة
  Employee(name, String phone, String sex, this.salary, this.workingTime) 
      : super(name, phone, sex);
}
// هذا الكلاس يحتوي على المعلومات الأساسية لأي منتج
class Product {
  // الخصائص الأساسية التي يجب أن يمتلكها أي منتج
  int? id;
  String name;
  double price;

  // المتغير idIncrementer يستخدم لزيادة الرقم التعريفي لكل كائن جديد، وتم تعريفه كـ private و static
  static int _idIncrementer = 0;

  // الكونستركتور الرئيسي لتعيين القيم للخصائص، حيث يتم زيادة id في كل مرة يتم فيها إنشاء كائن جديد
  Product(this.name, this.price) {
    _idIncrementer++;
    id = _idIncrementer;
  }
}
// هذا الكلاس يحتوي على المعلومات الأساسية لأي فاتورة
class Order {
  // الخصائص الأساسية التي يجب أن تملكها أي فاتورة
  int? id;
  String date;
  bool isPaid;
  Person person;
  List<Product> products;

  // المتغير idIncrementer يستخدم لزيادة الرقم التعريفي لكل كائن جديد، وتم تعريفه كـ private و static
  static int _idIncrementer = 0;

  // الكونستركتور الرئيسي لتعريف القيم للخصائص، حيث يتم زيادة id في كل مرة يتم فيها إنشاء كائن جديد
  Order(this.date, this.isPaid, this.person, this.products) {
    _idIncrementer++;
    id = _idIncrementer;
  }
}
// يمثل كل ما تحتويه الشركة من أشخاص، فواتير، منتجات، والدوال التي يمكن استخدامها للتعامل معهم.
class Company {
  // الكائنات التي تحتوي على معلومات الأشخاص، المنتجات، والفواتير.
  List<Person>? persons;
  List<Product>? products;
  List<Order>? orders;

  // الكونستركتور الذي يقوم بتهيئة الكائنات.
  Company() {
    persons = [];
    products = [];
    orders = [];
  }

  // الدالة لإضافة كائن من الكلاس Product إلى قائمة المنتجات.
  void addProduct(Product product) {
    products!.add(product);
  }

  // الدالة لإضافة كائن من الكلاس Person إلى قائمة الأشخاص.
  void addPerson(Person person) {
    persons!.add(person);
  }

  // الدالة لإضافة كائن من الكلاس Order إلى قائمة الفواتير.
  void addOrder(Order order) {
    orders!.add(order);
  }

  // الدالة لحذف كائن من قائمة المنتجات بناءً على رقم الـ id.
  void removeProduct(int id) {
    for (var product in products!) {
      if (product.id == id) {
        products!.remove(product);
        return;
      }
    }
    print("Product with id $id is not found!");
    print("----------------------");
  }

  // الدالة لحذف كائن من قائمة الأشخاص بناءً على رقم الـ id.
  void removePerson(int id) {
    for (var person in persons!) {
      if (person.id == id) {
        persons!.remove(person);
        return;
      }
    }
    print("Person with id $id is not found!");
    print("----------------------");
  }

  // الدالة لحذف كائن من قائمة الفواتير بناءً على رقم الـ id.
  void removeOrder(int id) {
    for (var order in orders!) {
      if (order.id == id) {
        orders!.remove(order);
        return;
      }
    }
    print("Order with id $id is not found!");
    print("----------------------");
  }

  // الدالة لطباعة معلومات شخص بناءً على رقم الـ id.
  void printPersonInfo(int id) {
    for (var person in persons!) {
      if (person.id == id) {
        print("Person with id $id info.");
        print("Name: ${person.name}");
        print("Phone: ${person.phone}");
        print("Gender: ${person.sex}");

        if (person is Client) {
          print("Email: ${person.email}");
        } else if (person is Employee) {
          print("Salary: ${person.salary}\$");
          print("Working time: ${person.workingTime}");
        }

        print("----------------------");
        return;
      }
    }
    print("Person with id $id is not found!");
    print("----------------------");
  }

  // الدالة لطباعة معلومات منتج بناءً على رقم الـ id.
  void printProductDetails(int id) {
    for (var product in products!) {
      if (product.id == id) {
        print("Product with id $id details.");
        print("Name: ${product.name}");
        print("Price: ${product.price}\$");
        print("----------------------");
        return;
      }
    }
    print("Product with id $id is not found!");
    print("----------------------");
  }

  // الدالة لطباعة تفاصيل فاتورة بناءً على رقم الـ id.
  void printOrderDetails(int id) {
    double totalSum = 0;

    for (var order in orders!) {
      if (order.id == id) {
        print("Order with id $id details.");
        print("Date: ${order.date}");
        print("Is paid: ${order.isPaid ? "yes" : "no"}");
        print("Ordered by: ${order.person.name}");
        print("Products:");

        for (var product in order.products) {
          totalSum += product.price;
          print("- ${product.name}: ${product.price}\$");
        }

        print("Total: $totalSum\$");
        print("----------------------");
        return;
      }
    }
    print("Order with id $id is not found!");
    print("----------------------");
  }

  // الدالة لطباعة جميع فواتير شخص بناءً على رقم الـ id.
  void printPersonOrders(int id) {
    for (var person in persons!) {
      if (person.id == id) {
        print("All orders made by person with id $id:");

        for (var order in orders!) {
          if (order.person.id == id) {
            print("> Order: #${order.id}");
            print("  Date: ${order.date}");
            print("  Is paid: ${order.isPaid ? "yes" : "no"}");
            print("  Ordered by: ${order.person.name}");
            print("  Products:");

            double totalSum = 0;

            for (var product in order.products) {
              totalSum += product.price;
              print("  - ${product.name}: ${product.price}\$");
            }

            print("  Total Price: $totalSum\$");
          }
        }
        print("----------------------");
        return;
      }
    }
    print("Person with id $id is not found!");
    print("----------------------");
  }
}

void main() {
  // Creating two objects from classes that inherit from Person
  // person1 is an object from the Client class, representing a client person
  // person2 is an object from the Employee class, representing an employee person
  var person1 = Client(name: "Mhamad", phone: "+96170123456", sex: "Male", email: "mhamad@example.com");
  var person2 = Employee( "Nadine","+9631249392",  "Female",  800,  "8:00 AM to 3:00 PM");

  // Defining six Product objects representing different products
  var product1 = Product( "Keyboard", 15);
  var product2 = Product( "Camera",  45);
  var product3 = Product( "HDD 1TB", 70);
  var product4 = Product( "SSD 1TB", 274.66);
  var product5 = Product( "Mouse", 8);
  var product6 = Product( "Table", 44.55);

  // Creating arrays to hold products for orders
  var order1Products = [product1, product2, product3]; // Order 1 will contain these products
  var order2Products = [product4]; // Order 2 will contain this product
  var order3Products = [product5, product6]; // Order 3 will contain these products

  // Creating three Order objects representing different invoices
  // Notice that both order1 and order2 are for the same person represented by person1
  var order1 = Order("2020-1-1",  true, person1, order1Products);
  var order2 = Order("2020-2-7",  true, person1, order2Products);
  var order3 = Order("2020-5-4",  false, person2, order3Products);

  // Creating a Company object to store persons, products, and orders in a structured way
  var company = Company();

  // Adding persons to the company's persons array using addPerson() method
  company.addPerson(person1);
  company.addPerson(person2);

  // Adding products to the company's products array using addProduct() method
  company.addProduct(product1);
  company.addProduct(product2);
  company.addProduct(product3);
  company.addProduct(product4);
  company.addProduct(product5);
  company.addProduct(product6);

  // Adding orders to the company's orders array using addOrder() method
  company.addOrder(order1);
  company.addOrder(order2);
  company.addOrder(order3);

  // Printing information of both persons using printPersonInfo() method by passing their IDs
  company.printPersonInfo(1);
  company.printPersonInfo(2);

  // Printing details of all products using printProductDetails() method by passing their IDs
  company.printProductDetails(1);
  company.printProductDetails(2);
  company.printProductDetails(3);
  company.printProductDetails(4);
  company.printProductDetails(5);
  company.printProductDetails(6);

  // Printing all orders associated with each person using printPersonOrders() method by passing their IDs
  company.printPersonOrders(1);
  company.printPersonOrders(2);

  // Removing order with ID 1 using removeOrder() method
  company.removeOrder(1);

  // Trying to print details of the removed order using printOrderDetails()
  company.printOrderDetails(1);

  // Printing all orders of the person with ID 1 to verify that the deleted order is also absent from their orders
  company.printPersonOrders(1);
}

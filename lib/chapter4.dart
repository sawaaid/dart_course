//for each
//add list to list
//where
import 'dart:convert';

class Chapter4 {
  List products = ["براد", "غسالة", "فرن", "سخان", "فلتر"];
  List prices = [300, 285, 150, 20, 100];
  List sale = [0, 250, 0, 0, 50];
  Map productsMap = {};

//الحصول على سعر لمنتج محدد
  dynamic getPriceForProduct(String productName) {
    int index = products.indexOf(productName);
    if (index < 0) {
      return "غير موجود";
    }
    return prices[index];
  }

//الحصول على سعر لمنتج محدد
  dynamic getPriceForProduct1(String productName) {
    int i = 0;
    for (String product in products) {
      if (product == productName) {
        return prices[i];
      }
      i++;
    }
    return "غير موجود";
  }

//الحصول على سعر منتجات تحوي أسماءها مقطع محدد
  void getPriceForProduct2(String productName) {
    int i = 0;
    List indexes = [];
    List searchProducts = [];
    List searchPrices = [];
    for (String product in products) {
      if (product.contains(productName)) {
        indexes.add(i);
      }
      i++;
    }
    for (int i = 0; i < indexes.length; i++) {
      searchProducts.add(products[indexes[i]]);
      searchPrices.add(prices[indexes[i]]);
    }
    print(searchProducts);
    print(searchPrices);
  }

//الحصول على سعر لمنتج محدد
  dynamic getPriceForProduct3(productName) {
    Map productsMap = Map.fromIterables(products, prices);
    print(productsMap);
    if (productsMap.containsKey(productName)) {
      return "${productsMap[productName]} \$";
    } else {
      return "المنتج غير موجود";
    }
  }

//حساب مجموع الرواتب ومتوسطهم وإضافة موظف جديد
  void salary() {
    // List of employee names
    List<String> employees = ['Ali', 'Sara', 'Hassan', 'Lina'];

    // List of their corresponding salaries
    List<double> salaries = [2500.0, 3200.0, 2900.0, 3100.0];

    // Print each employee's name with their salary
    for (int i = 0; i < employees.length; i++) {
      print('${employees[i]}: ${salaries[i]}');
    }

    // Calculate total salary
    double totalSalary = salaries.reduce((a, b) => a + b);
    print('Total Salary: \$${totalSalary}');

    // Calculate average salary
    double averageSalary = totalSalary / salaries.length;
    print('Average Salary: \$${averageSalary.toStringAsFixed(2)}');

    // Add a new employee and salary
    employees.add('Omar');
    salaries.add(2800.0);

    print('\nAfter adding a new employee:');
    for (int i = 0; i < employees.length; i++) {
      print('${employees[i]}: ${salaries[i]}');
    }
  }

//تعريف مصفوفة map
  mapFuntion() {
    Map<String, dynamic> filmStarWars = {"title": "Star Wars", "year": 1977};

    Map<String, dynamic> filmEmpire = {
      "title": "The Empire Strikes Back",
      "year": 1980
    };

    Map<String, dynamic> filmJedi = {
      "title": "The Return of the Jedi",
      "year": 1983
    };
    List listFilms = [filmStarWars, filmEmpire, filmJedi];
    Map<String, dynamic> currentFilm = listFilms[0];
    print(currentFilm);
    print(currentFilm['title']);
  }

//إضافة map إلى map
  addMapToMap() {
    Map<int, String> mapMonths = {0: 'January', 1: 'February', 2: 'March'};

    Map<int, String> moreMonths = {3: 'April', 4: 'May'};

    mapMonths.addEntries(moreMonths.entries);

    mapMonths.forEach((key, value) {
      print('$key: $value');
    });
  }

//تحزيل من json إلى map
  fromJsonToMap() {
    // Create JSON value
    String data = '{"name": "book", "price": 12.4, "ver": 2023}';

// Decode the JSON
    Map<String, dynamic> items = json.decode(data);

    print(items);
    print(items['name']);
    print("This is the price : $items['price']");
    print('This is the ver : ${items['price']}');
  }

  //لدي عدة منتجات لها اسعار محددة وبعضها عليها عرض
  // المطلوب إظهار سعر المنتج وإذا كان المنتجعليه عرض إظهار سعره بعد العرض وتوضيح أن لديه عرض
  getSaleProducts() {

    for (int i = 0; i < prices.length; i++) {
      if (sale[i] == 0) {
        print("the price of ${products[i]} is : ${prices[i]}");
      }
      else{
       print("the price of ${products[i]} is : ${sale[i]} after sale and old price is ${prices[i]}");

      }
    }
  }

void main10() {
  bool sad = false;
  var cart = ['milk', 'ghee', if (sad) 'Beer'];
  print(cart);
}
}
class FullProgam{
  
  //لدي عدة منتجات كل منتج له اسم وسعر ومقدار حسم وكمية
// المطلوب: (استخدمList  مع Map )
// حساب السعر الكلي للمنتجات بدون حسم
// حساب السعر الكلي للمنتجات مع حسم
// طباعة تفاصيل كل المنتجات
void main() {
  // قائمة من المنتجات، كل منتج عبارة عن خريطة تحتوي على التفاصيل
  List<Map<String, dynamic>> products = [
    {
      'name': 'لابتوب',
      'price': 1500.0,
      'quantity': 1,
      'hasDiscount': true,
      'discount':20.0
    },
    {
      'name': 'هاتف',
      'price': 800.0,
      'quantity': 2,
      'hasDiscount': false,
    },
    {
      'name': 'سماعات',
      'price': 150.0,
      'quantity': 3,
      'hasDiscount': true,
      'discount':12.0
    },
    {
      'name': 'شاحن',
      'price': 20.0,
      'quantity': 5,
      'hasDiscount': false,
    },
  ];

  // طباعة تفاصيل كل منتج
  for (var product in products) {
    printDetails(product);
  }

  // حساب المجموع الكلي لجميع المنتجات/
  //print(products.where((element) => element["hasDiscount"]).toList());
  double totalCost = products.fold(0, (sum, item) => sum + totalPrice(item));
  print('المجموع الكلي لجميع المنتجات: ${totalCost.toStringAsFixed(2)}');
}

// دالة لحساب السعر الإجمالي للمنتج مع الضرائب إذا كانت موجودة
double totalPrice(Map<String, dynamic> product) {
  double price = product['price'];
  int quantity = product['quantity'];
  bool hasDiscount = product['hasDiscount'];
  double taxRate = hasDiscount ? product['discount'] : 0.0; // فرض ضريبة 10% إذا كان هناك ضريبة

  return (price * quantity) * (1 + taxRate);
}

// دالة لطباعة تفاصيل المنتج
void printDetails(Map<String, dynamic> product) {
  print('اسم المنتج: ${product['name']}');
  print('السعر: ${product['price']}');
  print('الكمية: ${product['quantity']}');
  print('الإجمالي بعد الحسم: ${totalPrice(product).toStringAsFixed(2)}');
  print('الحسم: ${product['hasDiscount'] ? "${product['discount']} %": "غير موجود"}');
  print('---------------------------');
}
}
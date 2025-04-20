// تعريف كلاس Employee مع خصائص خاصة (private) باستخدام _
class Employee {
  String? _name; // خاصية لتخزين الاسم
  int? _age; // خاصية لتخزين العمر
  String? _address; // خاصية لتخزين العنوان

  // دالة للحصول على العمر
  int getAge() {
    return _age!;
  }

  // دالة للحصول على الاسم
  String getName() {
    return _name!;
  }

  // دالة للحصول على العنوان
  String getAddress() {
    return _address!;
  }

  // دالة لتعيين الاسم
  setName(String name) {
    _name = name;
  }

  // دالة لتعيين العمر
  setAge(int age) {
    _age = age;
  }

  // دالة لتعيين العنوان
  setAddress(String address) {
    _address = address;
  }
}
void main() {
  Employee employee = Employee();
  employee.setName("hadi");
  employee.setAge(23);
  employee.setAddress("Halab");
  print(employee.getName());
  
  }
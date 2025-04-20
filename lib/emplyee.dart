class Employee {
  int? _id;
  String? _name;
  getName(){
    return this._name;
  }
  getId(){
    return _id;
  }
  Employee(this._id,this._name);
}
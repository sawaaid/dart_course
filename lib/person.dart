class Person {
  int _id;
  final String _name;
  getId() {
    return _id;
  }
  getName() {
    return _name;
  }
  incrementId(){
    _id++;
  }
Person(this._id,this._name);
}

class Car{
  String? name;
  int? id;
  
   Car( this.id
   , this.name);

   Car.second(){
    id=20;
    name="mazda";
   }
  display(){
    print("$name $id");
  }
}
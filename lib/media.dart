class Media {
  String title;
  String type;
  Media(this.title,this.type) {
    print("i am super class");
  }
}
class Book{
  String? author;
  String? code;
  // Book(super.title,super.type,this.author,this.code){
  //   print("i am sub class");
  // }
}

class Camera{
 int? _megaPixel;
 String? color;
 String? name;
 display(){
  print("$name");
  print("$color");
  print("$_megaPixel");
 }
 Camera(this.color,
  this._megaPixel,
  this.name);

  Camera.first(){
    color="red";
    _megaPixel=25;
    name="sony";
  }
}
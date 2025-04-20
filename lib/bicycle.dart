class Bicycle {
      String? color;
      int? size;
      int? currentSpeed;
      void changeGear(int newValue) {
        currentSpeed = newValue;
      }
      void display() {
        print("Color: $color");
        print("Size: $size");
        print("Current Speed: $currentSpeed");
      }
    }

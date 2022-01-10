void main() {
  Horse pony = Horse("траву", "степь", "скакун", "гнедой");
  pony.makeNoise();
  pony.eat();
  pony.sleep();

  Dog sharik = Dog("кости", "двор", "дворняга", "сторожевая");
  sharik.makeNoise();
  sharik.eat();
  sharik.sleep();

  Cat motroskin = Cat("молоко", "Простоквашино", "домашний", "шить");
  motroskin.makeNoise();
  motroskin.eat();
  motroskin.sleep();
}

class Animal {
  String? food;
  String? location;
  String? breed;

  Animal(String food, String location, String breed) {
    this.food = food;
    this.location = location;
    this.breed = breed;
  }

  void makeNoise() {
    print("издает звук");
  }

  void eat() {
    print("ест");
  }

  void sleep() {
    print("$breed спит");
  }
}

class Dog extends Animal {
  String? purpose;

  Dog(String food, String location, String breed, String purpose)
      : super(food, location, breed) {
    this.purpose = purpose;
  }

  @override
  void makeNoise() {
    print("$purpose $breed издает звук ГАВ-ГАВ.");
  }

  @override
  void eat() {
    print("$purpose $breed ест $food.");
  }
}

class Horse extends Animal {
  String? suit;

  Horse(String food, String location, String breed, String suit)
      : super(food, location, breed) {
    this.suit = suit;
  }

  @override
  void makeNoise() {
    print("$suit $breed издает звук И-ГО-ГО.");
  }

  @override
  void eat() {
    print("$suit $breed ест $food.");
  }
}

class Cat extends Animal {
  String? hobby;

  Cat(String food, String location, String breed, String hobby)
      : super(food, location, breed) {
    this.hobby = hobby;
  }

  @override
  void makeNoise() {
    print("$breed кот издает звук МЯУ. и любит $hobby.");
  }

  @override
  void eat() {
    print("$breed ест $food.");
  }
}

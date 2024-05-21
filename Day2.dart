// Classes
// Classes are blueprints of objects. In simple words they describe an object
// The class Person describes what an object of this class has
// A person has a name, age, height and weight
class Person {
  final String name;
  final int age;
  final double height;
  final double weight;
  final String lastName;
  Person(this.name, this.age, this.height, this.weight,
      this.lastName); // Constructor

  String getDetails() {
    return 'Name: $name\nAge: $age\nHeight: $height\nWeight: $weight\nLast Name: $lastName';
  }
}

// A constructor is needed to pass the values to the objects of a class
// This keyword is used to denote the current instance/object of a class

// Methods are used to perform actions or manipulate the objects of a class

// This is an example of inheritance. Here Person is a parent class. Rima is the child class
// This also means that the child inherits the properties or what describes it from the parent class
class Sylverster extends Person {
  final String hobbies;
  Sylverster(super.name, super.age, super.height, super.wight, super.lastName,
      this.hobbies);

  String getDetails() {
    return 'Name: $name\nAge: $age\nHeight: $height\nWeight: $weight\nLast Name: $lastName\nHobbies: $hobbies';
  }
}

// Generics
// Generics allow us to pass values of different type
// We don't need to define the type. This ensures type safety
class NonGeneric {
  void swapIntegers(int a, int b) {
    int temp;
    temp = a;
    a = b;
    b = temp;
    print('A: $a');
    print('B: $b');
  }

  void swapStrings(String a, String b) {
    String temp;
    temp = a;
    a = b;
    b = temp;
    print('A: $a');
    print('B: $b');
  }
}

class Generic {
  void swap<E>(E a, E b) {
    E temp;
    temp = a;
    a = b;
    b = temp;
    print('A: $a');
    print('B: $b');
    print('E: $E'); // Object when a and b have different datatype
  }
}

// Async, Await and Future
// Future: Some value that will be available in the future
// Async: Used when the result is not available to us immediately
// Await: Used to wait for a result of a Future
Future<String> fetchData() {
  return Future.delayed(
    Duration(seconds: 4),
    () => "Data fetched",
  );
}

Future<void> main() async {
  // This is how an object is created
  Person bob = Person(
    "Bob",
    25,
    170.3,
    70.5,
    "XYZ",
  );
  print(bob);
  final details = bob.getDetails();
  print(details);

  // We can use the methods on objects

  // Here we are creating an object from class Rima
  Sylverster sy = Sylverster("Sylverster", 30, 175.6, 75.8, "XYZ", "Acting");
  print(sy);
  final syDetails = sy.getDetails();
  print(syDetails);

  // Non-Generic
  NonGeneric nonGeneric = NonGeneric();
  nonGeneric.swapIntegers(23, 65);
  nonGeneric.swapStrings("Hello", "World");

  // Generic
  Generic generic = Generic();
  generic.swap(23, 90);
  Generic gen = Generic();
  gen.swap(65.8, "Hi");

  // Async
  print("Fetching data.....");
  final result = await fetchData();
  print(result);
  print("Fetch completed");
}

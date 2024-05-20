void main() {
  // var, const and final
  var random = 40; // Var can store any type of data
  print(random);

  // When a variable is declared using const, the value of that variable cannot be changed
  const constant = "First";

  // Uncomment the line to see the error
  // constant = "Second";
  print(constant);

  final finalVar = 30;
  // Uncomment the line to see the error
  // finalVar = 56;
  print(finalVar);
  // Final and const work the same way.
  // Final variable creates a runtime constant
  // Const variable creates a compile-time constant

  // Data Types
  int a = 90; // Int is used to store integer type data
  double b = 40.0; // Double is used to store floating type data
  String c = "GDSC"; // A String is an array of characters
  print(a);
  print(b);
  print(c);

  // Data Structures
  // This list can store int, double and string type data as the data type of the list is not defined
  List randomElements = ["Apple", "Banana", "Grapes", 12, 80];
  print(randomElements);

  // When 10 is entered, an error is thrown as 10 is an integer and not a string
  List<String> fruits = ["Apple", "Banana", "Grapes", "Mango"];
  print(fruits);

  // Similarly, a List can be of int type and double type. Below are examples of both
  List<int> number = [10, 30, 50, 20, 45, 70, 65];
  print(number);

  List<double> measurement = [20.0, 70.5, 43.8, 23.6];
  print(measurement);

  // To access and element of a list we use the index of the element in the list
  print(measurement[2]);

  // To add an element to a list we use the add method
  measurement.add(9.4);
  print(measurement);

  // To remove an element, we use the remove method
  number.remove(65);
  print(number);

  // The length of the list can be found using the length method
  print(fruits.length);

  // Sets
  Set<String> cars = {"Ferrari", "Porsche", "Lamborghini", "Rolls Royce"};
  print(cars);

  Set<int> digits = {1, 2, 3, 4, 5, 6, 7};
  print(digits);

  // Map has key-value pairs and is the most used data structure
  Map<int, String> map = {1: "One", 2: "Two", 3: "Three"};

  // Map<key, value>, here key and value denote the datatype of the key and the value we want to store
  // The value can be accessed using the key
  // The key has to be unique and the value can be duplicate
  print(map[2]);
  print(map.values);
  print(map.keys);

  // An entry can be changed in the map as well
  // The remove method can be used to remove a key-value pair from the map
  map[1] = "Zero";
  print(map);

  // A new entry can be added to the map
  map.addAll({4: "Four", 5: "Five"});
  print(map);

  // The length of the map can be found using the length attribute
  print(map.length);

  // Functions
  // Functions are used to perform a specific task
  int add(int a, int b) {
    return a + b;
  }

  add(20, 80);
  // In the above function, int is the return type
  // The function definition is defined as returnType functionName(argument) {}
  // The functions can be short hand as well
  String greeting(String name) {
    return "Good morning, $name";
  }

  final wishes = greeting("Some name");
  print(wishes);

  int sub(int a, int b) => a - b;
  sub(90, 40);

  // Operators
  int firstNumber = 43;
  int secondNumber = 67;
  print(firstNumber + secondNumber);
  print(firstNumber - secondNumber);
  print(firstNumber / secondNumber);
  print(firstNumber * secondNumber);
  print(firstNumber % secondNumber);
  String name = "Some name"; // Replace with your name
  print("This is $name");

  // Control Flow
  // If-else statement
  int age = 18;
  if (age <= 18) {
    print("You cannot vote");
  } else {
    print("You can vote");
  }

  // If-else if statement
  String fruit = "Pomegranate";
  if (fruit == "Banana") {
    print("Banana Smoothie");
  } else if (fruit == "Apple") {
    print("Apple Cider Vinegar");
  } else if (fruit == "Grape") {
    print("Grape Juice");
  } else {
    print("Pomegranate Juice");
  }

  // Switch statement
  int num = 2;
  switch (num) {
    case 1:
      print("One");
      break;
    case 2:
      print("Two");
      break;
    case 3:
      print("Three");
      break;
    case 4:
      print("Four");
      break;
    default:
      print("Five");
  }

  // Loops
  // For loop
  // The syntax of a for loop is (initialization, condition, increment/decrement) {}
  List<String> alphabets = ["A", "B", "C", "D", "E"];
  for (int i = 0; i <= alphabets.length; i++) {
    print(alphabets[i]);
  }

  // While loop
  // The loop starts from 5 and at each iteration the condition is checked
  // The condition here is n >= 0. As long as value of n is greater than 0, the loop is executed
  // At each iteration, we decrement the value of n
  int n = 5;
  while (n >= 0) {
    print(n);
    n--;
  }
}

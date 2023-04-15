// Function with no parameters and no return value
void greet() {
  print("Hello, world!");
}

// Function with one parameter and no return value
void greetPerson(String name) {
  print("Hello, $name!");
}

// Function with two parameters and a return value
int add(int a, int b) {
  return a + b;
}

// Function with optional parameters and a return value
String fullName(String firstName, [String? middleName, String? lastName]) {
  if (middleName != null && lastName != null) {
    return "$firstName $middleName $lastName";
  } else if (middleName != null) {
    return "$firstName $middleName";
  } else {
    return firstName;
  }
}

// Function with named parameters and a return value
String formatName(
    {required String firstName, String? middleName, required String lastName}) {
  if (middleName != null) {
    return "$lastName, $firstName $middleName";
  } else {
    return "$lastName, $firstName";
  }
}

// Function with a function parameter and a return value
int applyFunction(int a, int b, int Function(int, int) operation) {
  return operation(a, b);
}

void main() {
  // greet();
  // greetPerson("Kazem");
  // print(add(2, 9));
  print(fullName("Alice", "Bob", "Smith"));
  print(fullName("Alice", "Bob"));
  print(fullName("Alice"));
  // print(formatName(firstName: "Alice", lastName: "Smith"));
  // print(formatName(firstName: "Alice", middleName: "Bob", lastName: "Smith"));
  // print(applyFunction(2, 3, add));
}

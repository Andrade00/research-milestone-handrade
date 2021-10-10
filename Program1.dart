import 'dart:io';

void main() {
  print("Enter your name:");
  String? name = stdin.readLineSync();
  print("Hello, $name. \nWelcome to this program");
}

class person {
  String name;
  int age;
}

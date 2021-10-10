import 'dart:io';
import 'dart:math';

void main() {
  print("Enter your name:");
  String? name = stdin.readLineSync();
  print(
      "Hello, $name. \n We are going to play a dice game. If you roll a 7 or 11 you get \$10 If you roll snake eyes you lose all your money. You can end the game and walk away with your money at any time.\nType [STOP] to stop or [ROLL] to roll.");
  String? option = stdin.readLineSync();
  int money = 0;
  if (option != "STOP" && option != "ROLL") {
    print("input must be [STOP] or [ROLL]");
  }
  while (option == "STOP" || option == "ROLL") {
    if (option == "STOP") {
      print("Goodbye $name! You won \$$money");
      exit(0);
    } else {
      Random rnd = new Random();
      int r = 2 + rnd.nextInt(10);
      print("$r is the roll");
      if (r == 7 || r == 11) {
        money += 10;
        print(
            "Congrats $name! You won \$10. We will add it to your total. Would you like to keep playing? Reply [STOP] to stop or anything else to continue.");
        String? option2 = stdin.readLineSync();
        if (option2 == "STOP") option = option2;
      } else if (r == 2) {
        money = 0;
        print(
            "Oh no snake eyes! You lost your money but would you like to keep playing? Reply [STOP] to stop or anything else to continue.");
        String? option2 = stdin.readLineSync();
        if (option2 == "STOP") option = option2;
      } else {
        print(
            "Would you like to keep playing? Reply [STOP] to stop or anything else to continue.");
        String? option2 = stdin.readLineSync();
        if (option2 == "STOP") option = option2;
      }
      print("Total earned: \$$money");
    }
  }
}

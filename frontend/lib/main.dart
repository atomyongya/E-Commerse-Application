// Importing inbuilt class and module.
import "package:flutter/material.dart";

// Importing the dart file that we create
import "./home/mainfoodpage.dart";

// Creating main() function from where compilation start.
void main() {
  runApp(const FoodApplication());
}

// Creating FoodApplication class.
class FoodApplication extends StatefulWidget {
  const FoodApplication({Key? key}) : super(key: key);
  @override
  State<FoodApplication> createState() => _FoodApplication();
}

class _FoodApplication extends State<FoodApplication> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Application",
      home: MainFoodPage(),
    );
  }
}

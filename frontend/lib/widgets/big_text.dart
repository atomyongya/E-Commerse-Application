import "package:flutter/material.dart";

// Creaing custom state less text widget so we can use it again and again.
class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  BigText({
    Key? key, 
    this.color = const Color(0xFF332d2d),
    required this.text,
    this.size = 18,
    this.overflow = TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: "Roboto",
        fontWeight: FontWeight.w800,
      ),
    );
  }
}

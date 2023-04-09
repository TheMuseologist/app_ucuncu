import 'package:flutter/material.dart';

class MyCustomText extends StatelessWidget {
  final String text;

  const MyCustomText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      softWrap: true,
      textAlign: TextAlign.center,
    );
  }
}

class Button extends StatelessWidget {
  final MyCustomText childText;
  final VoidCallback onPressed;

  const Button({
    Key? key,
    required this.childText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 152,
      height: MediaQuery.of(context).size.height * 0.12,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        child: childText,
      ),
    );
  }
}
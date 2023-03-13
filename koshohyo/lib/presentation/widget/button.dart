import 'package:flutter/material.dart';

class MyCommonButton extends StatelessWidget {
  final Widget child;
  final Function onPress;
  const MyCommonButton(this.child, this.onPress, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: const BorderSide(
            color: Colors.purpleAccent,
          ),
        ),
        onPressed: () {
          onPress();
        },
        child: child,
      ),
    );
  }
}

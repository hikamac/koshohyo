import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String label;
  final Function onPress;
  const CommonButton(this.label, this.onPress, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress(),
      child: Text(label),
    );
  }
}

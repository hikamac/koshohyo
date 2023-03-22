import 'package:flutter/material.dart';

class MyCommonButton extends StatelessWidget {
  final Widget child;
  final Function onPress;
  ButtonStyle? style;
  MyCommonButton({
    super.key,
    required this.child,
    required this.onPress,
    ButtonStyle? style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: style ??
            ElevatedButton.styleFrom(
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

class ConditionButton extends StatelessWidget {
  final List<String> conditions;
  ConditionButton({
    super.key,
    required this.conditions,
  });

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MyCommonButton(
      child: Text(conditions[index]),
      onPress: () => changeToNextIndex(),
    );
  }

  void changeToNextIndex() {
    if (conditions.isEmpty) return;
    if (index + 1 == conditions.length) {
      index = 0;
    } else {
      index += 1;
    }
  }
}

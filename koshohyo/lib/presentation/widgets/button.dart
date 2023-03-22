import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

  static const shortcuts = <ShortcutActivator, Intent>{
    SingleActivator(LogicalKeyboardKey.digit1): ChangeIndexIntent(condition: 1),
    SingleActivator(LogicalKeyboardKey.digit2): ChangeIndexIntent(condition: 2),
    SingleActivator(LogicalKeyboardKey.digit3): ChangeIndexIntent(condition: 3),
  };
  ConditionButton({
    super.key,
    required this.conditions,
  });

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      shortcuts: shortcuts,
      // actions: actions,
      autofocus: true,
      // focusNode: _focusNode,
      child: MyCommonButton(
        child: Text(conditions[index]),
        onPress: () => changeToNextIndex(),
      ),
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

class ChangeIndexIntent extends Intent {
  final int condition;
  const ChangeIndexIntent({required this.condition});
}

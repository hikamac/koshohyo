import 'package:flutter/material.dart';
import 'package:koshohyo/presentation/widget/button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(
          '呼称表',
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        Row(
          children: [
            Image.asset('assets/images/350x300_yt.png'),
            // CommonButton(),
            // CommonButton(),
            // CommonButton(),
            Image.asset('assets/images/350x300_tcbn.png'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyCommonButton(const Text("保存"), () {}),
            MyCommonButton(const Text('CSV出力'), () {}),
          ],
        )
      ]),
    );
  }
}

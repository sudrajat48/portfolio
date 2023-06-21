import 'package:flutter/material.dart';
import 'package:portofolio/constaint.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.value,
  }) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: IntTween(begin: 0, end: value),
        duration: const Duration(seconds: 5),
        builder: (context, value, child) => Text(
              "$value+",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: primaryColor),
            ));
  }
}

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/constaint.dart';
import 'package:portofolio/responsive.dart';

class TextBanner extends StatelessWidget {
  const TextBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Discover my Amazing \nProject!",
            style: Responsive.isDesktop(context)
                ? Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white)
                : Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              height: defaultPadding / 2,
            ),
          Responsive.isMobile(context)
              ? const Expanded(child: AnimatedText())
              : const AnimatedText()
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          const Text("I build "),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText("Portofolio."),
              TyperAnimatedText("Aplikasi Kedai with firebase."),
              TyperAnimatedText("Aplikasi Thazen with React Native."),
              TyperAnimatedText("Aplikasi Pemilu."),
              TyperAnimatedText("Aplikasi AISmarT."),
              TyperAnimatedText("Alphabet Outlet with React Native."),
            ],
          ),
        ],
      ),
    );
  }
}

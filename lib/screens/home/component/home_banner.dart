import 'package:flutter/material.dart';
import 'package:portofolio/constaint.dart';
import 'package:portofolio/responsive.dart';
import 'package:portofolio/screens/home/component/text_banner.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66)),
          const TextBanner(),
        ],
      ),
    );
  }
}

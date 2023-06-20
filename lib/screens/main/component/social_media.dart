import 'package:flutter/material.dart';
import 'package:portofolio/constaint.dart';
import 'package:portofolio/screens/main/component/icon_about.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding / 2),
      child: Container(
          color: const Color(0xFF24242E),
          child: Row(
            children: const [
              Spacer(),
              IconAbout(
                asset: 'assets/icons/linkedin.svg',
                url: 'https://www.linkedin.com/in/sudrajat-ajat-679141185/',
              ),
              IconAbout(
                asset: 'assets/icons/github.svg',
                url: 'https://github.com/sudrajat48',
              ),
              Spacer(),
            ],
          )),
    );
  }
}

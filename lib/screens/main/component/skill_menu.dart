import 'package:flutter/material.dart';
import 'package:portofolio/constaint.dart';
import 'package:portofolio/screens/main/component/skill.dart';

class SkillMenu extends StatelessWidget {
  const SkillMenu({
    Key? key,
    required this.image1,
    required this.text1,
    required this.image2,
    required this.text2,
    required this.image3,
    required this.text3,
  }) : super(key: key);

  final String image1, text1, image2, text2, image3, text3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SkillSet(
          image: image1,
          text: text1,
        ),
        const SizedBox(width: defaultPadding),
        SkillSet(
          image: image2,
          text: text2,
        ),
        const SizedBox(width: defaultPadding),
        (image3 != '' && text3 != '')
            ? SkillSet(
                image: image3,
                text: text3,
              )
            : const SizedBox(
                height: 0,
              ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portofolio/constaint.dart';
import 'package:portofolio/screens/main/component/download_cv.dart';
import 'package:portofolio/screens/main/component/skill_menu.dart';
import 'package:portofolio/screens/main/component/social_media.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const SkillMenu(
            image1: 'images/flutter.png',
            text1: 'Flutter',
            image2: 'images/figma.png',
            text2: 'Figma',
            image3: 'images/mysql.png',
            text3: 'MySQL',
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const SkillMenu(
            image1: 'images/php.png',
            text1: 'Php',
            image2: 'images/firebase.png',
            text2: 'Firebase',
            image3: 'images/git.png',
            text3: 'Git',
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const SkillMenu(
            image1: 'images/ms.office.png',
            text1: 'Ms.Office',
            image2: 'images/laravel.png',
            text2: 'Laravel',
            image3: 'images/reactnative.png',
            text3: 'React Native',
          ),
          const SizedBox(height: defaultPadding),
          const Divider(),
          const SizedBox(height: defaultPadding),
          const DownloadCV(),
          const SocialMedia(),
        ],
      ),
    ));
  }
}

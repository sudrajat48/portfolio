import 'package:flutter/material.dart';
import 'package:portofolio/constaint.dart';
import 'package:portofolio/models/project.dart';
import 'package:url_launcher/url_launcher.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const Spacer(),
          Text(
            project.description!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              // ignore: deprecated_member_use
              launch(project.link!);
            },
            child: const Text(
              "Read More >>",
              style: TextStyle(color: primaryColor),
            ),
          )
        ],
      ),
    );
  }
}

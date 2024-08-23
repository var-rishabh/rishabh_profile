import 'package:flutter/material.dart';
import './tile_content.dart';
import '../../widgets/heading.dart';
import '../../utils/constants.dart' as constants;

class ExpandableTiles extends StatelessWidget {
  const ExpandableTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: constants.aboutSection.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
              title: Heading(
                title: constants.aboutSection[index]["display"]!,
                fontSize: 15,
              ),
              children: [
                TileContent(
                  title: constants.aboutSection[index]["title"]!,
                  content: constants.aboutSection[index]["title"] == "education"
                      ? constants.education
                      : constants.aboutSection[index]["title"] == "experience"
                          ? constants.experience
                          : constants.aboutSection[index]["title"] == "projects"
                              ? constants.projects
                              : constants.aboutSection[index]["title"] ==
                                      "sideProjects"
                                  ? constants.sideProjects
                                  : constants.aboutSection[index]["title"] ==
                                          "hobbies"
                                      ? constants.hobbies
                                      : [],
                ),
              ]);
        },
      ),
    );
  }
}

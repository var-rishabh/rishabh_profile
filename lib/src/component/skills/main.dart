import 'package:flutter/material.dart';
import '../../widgets/heading.dart';
import '../../utils/constants.dart' as constants;

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        alignment: WrapAlignment.center,
        children: List.generate(
          constants.skills.length,
          (index) {
            return SizedBox(
              width: 90,
              height: 80,
              child: Card(
                margin: const EdgeInsets.fromLTRB(5, 0, 5, 10),
                color: const Color(0xff252525),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      constants.skills[index]["icon"],
                      color: Colors.white,
                    ),
                    const SizedBox(height: 5),
                    Heading(
                      title: constants.skills[index]["title"]!,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

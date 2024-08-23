import 'package:flutter/material.dart';

import '../../widgets/heading.dart';

class TileContent extends StatelessWidget {
  final String title;
  final List<Map<String, String?>> content;

  const TileContent({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListView.builder(
        shrinkWrap: true,
        itemCount: content.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Heading(title: content[index]["title"]!),
            subtitle: Text(content[index]["content"]!),
          );
        },
      )
    ]);
  }
}

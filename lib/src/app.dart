import 'package:flutter/material.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// customized components and widgets
import './widgets/heading.dart';
import './component/expandable_tiles/main.dart';
import './component/skills/main.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          snap: false,
          snappings: [0.5, 0.48, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Stack(
          children: [
            ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black87, Colors.transparent],
                ).createShader(
                  Rect.fromLTRB(0, 0, rect.width, rect.height),
                );
              },
              blendMode: BlendMode.dstIn,
              child: Image.asset("assets/main.jpg"),
            ),
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Heading(
                    title: "Swipe Up",
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  Icon(
                    FontAwesomeIcons.arrowUpWideShort,
                    color: Colors.white,
                    size: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Heading(
                        title: "Rishabh Varshney",
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20, width: 0),
                Row(
                  children: [
                    Row(
                      children: [
                        SizedBox(height: 0, width: 40),
                        Icon(
                          FontAwesomeIcons.envelope,
                          color: Colors.black,
                          size: 12,
                        ),
                        SizedBox(height: 0, width: 10),
                        Text('right.rishabh@gmail.com',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 0, width: 44),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.phone,
                          color: Colors.black,
                          size: 11,
                        ),
                        SizedBox(width: 9),
                        Text('+91 7078202575',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 15, width: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(height: 0, width: 40),
                        Icon(
                          FontAwesomeIcons.cakeCandles,
                          color: Colors.black,
                          size: 11,
                        ),
                        SizedBox(height: 0, width: 10),
                        Text('11th September, 2002',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 0, width: 60),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.locationDot,
                          color: Colors.black,
                          size: 12,
                        ),
                        SizedBox(height: 0, width: 10),
                        Text('Gurugram, India',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 50, width: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 0, width: 40),
                    Heading(title: "About Me"),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
                  child: ExpandableTiles(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 0, width: 40),
                    Heading(title: "My Skills"),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 20),
                  child: Skills(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

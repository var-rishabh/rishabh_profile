import 'package:flutter/material.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.4, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),

        // Main Window
        body: Stack(
          children: [
            Container(
              child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black87, Colors.transparent],
                    ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset('assets/main.jpg')),
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.56,
                left: MediaQuery.of(context).size.width * 0.08,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Swipe Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  SizedBox(width: 10),
                  Icon(FontAwesomeIcons.arrowUpWideShort,
                      color: Colors.white, size: 15),
                ],
              ),
            )
          ],
        ),

        // Info Window
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.only(top: 20),
            // height: 350,
            child: Column(children: [
              const Row(children: [SizedBox(height: 15)]),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 40),
                  Text('Rishabh Varshney',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                ],
              ),
              const Row(children: [SizedBox(height: 20)]),
              const Row(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 40),
                      Icon(
                        FontAwesomeIcons.envelope,
                        color: Colors.black,
                        size: 15,
                      ),
                      SizedBox(width: 10),
                      Text('right.rishabh@gmail.com',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(children: [SizedBox(width: 40)]),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.phone,
                        color: Colors.black,
                        size: 13,
                      ),
                      SizedBox(width: 10),
                      Text('7078202575',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
              const Row(children: [SizedBox(height: 15)]),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 40),
                      Icon(
                        FontAwesomeIcons.cakeCandles,
                        color: Colors.black,
                        size: 13,
                      ),
                      SizedBox(width: 10),
                      Text('11th September, 2002',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(children: [SizedBox(width: 60)]),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.locationDot,
                        color: Colors.black,
                        size: 15,
                      ),
                      SizedBox(width: 10),
                      Text('Gurugram, India',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
              const Row(children: [SizedBox(height: 50)]),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 40),
                  Text('About Me',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                ],
              ),
              Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 40),
                    color: Colors.grey[100],
                    child: ExpansionTile(
                      title: const Text(
                        "🎓  Education",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: const Column(children: [
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('B.Tech',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('College : PIET, Panipat',
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('Branch : Computer Science (AI & ML)',
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('CGPA : 8.6',
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('Intermediate',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('School : Brilliant Public School',
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('Stream : PCM with CS',
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('Percentage : 76%',
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            SizedBox(height: 10),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 40),
                    color: Colors.grey[100],
                    child: ExpansionTile(
                      title: const Text(
                        "👩🏻‍💻  B.Tech Projects",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: const Column(children: [
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('Flower Classification ANN Model',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('Member: 1',
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text(
                                  'Implemented Image Classification using \nANN to identify the flower type from the \ninput images. \nAnd used Gradio to create the interface \nof the project.',
                                  style: TextStyle(fontSize: 18),
                                  maxLines: 5,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('Text Summarization using ML',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('Member: 4',
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text(
                                    'Automating the extraction of key information \nfrom large volumes of text, condensing it \ninto concise summaries, making content \nmore accessible and efficient to consume.',
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            SizedBox(height: 20)
                          ]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 40),
                    color: Colors.grey[100],
                    child: ExpansionTile(
                      title: const Text(
                        "💼  Internships",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: const Column(children: [
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('Otomator Technologies',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('Position : Full Stack Developer',
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('Duration : 14 Months',
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text(
                                  'Project : \n- Build APIs and webhooks for mobile app \nto control the home appliances using \nMQTT Broker. \n- Got a hands-on on AWS S2 Bucket. \n ',
                                  style: TextStyle(fontSize: 18),
                                  maxLines: 5,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('CodeClause',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('Position : Data Science Intern',
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('Duration : 1 Month',
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text(
                                  'Project : Developed a recommendation \nsystem for retail stores using a dataset. \nImplemented algorithms and techniques \nto offer personalized product suggestions.',
                                  style: TextStyle(fontSize: 18),
                                  maxLines: 5,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 40),
                    color: Colors.grey[100],
                    child: ExpansionTile(
                      title: const Text(
                        "📂  Side Projects",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: const Column(children: [
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('BuildChat',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('Member: 5',
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text(
                                  'A cloud-based team collaboration platform \ndesigned to facilitate communication and \nproductivity within organizations. It offers \nreal-time messaging and file sharing with \neveryone among multiple channels.',
                                  style: TextStyle(fontSize: 18),
                                  maxLines: 5,
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('E-commerce site with Trending Features',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('Member: 2',
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text(
                                    'Created admin and client sections, \nstreamlined ordering system, monthly \nsubscription option, trial product selection, \nand inbuilt wallet system.',
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            SizedBox(height: 20),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.only(left: 40, right: 40),
                    color: Colors.grey[100],
                    child: ExpansionTile(
                      title: const Text(
                        "🎮  Hobbies",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: const Column(children: [
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text(' ♟  Learning Chess',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('🏸 Volleyball and Badminton',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(width: 15, height: 25),
                                Text('🕹 Playing Online Games',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            SizedBox(height: 20),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 40),
                      Text('My Skills',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 35),
                            width: 100,
                            height: 90,
                            child: Card(
                              margin: const EdgeInsets.all(0),
                              color: const Color(0xff252525),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.android,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Android',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 100,
                            height: 90,
                            child: Card(
                              margin: const EdgeInsets.all(0),
                              color: const Color(0xff252525),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.database,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'SQL',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            margin: const EdgeInsets.only(right: 35),
                            width: 100,
                            height: 90,
                            child: Card(
                              margin: const EdgeInsets.all(0),
                              color: const Color(0xff252525),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.github,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Github',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 35),
                            width: 100,
                            height: 90,
                            child: Card(
                              margin: const EdgeInsets.all(0),
                              color: const Color(0xff252525),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.react,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'React',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 100,
                            height: 90,
                            child: Card(
                              margin: const EdgeInsets.all(0),
                              color: const Color(0xff252525),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.python,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Python',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            margin: const EdgeInsets.only(right: 35),
                            width: 100,
                            height: 90,
                            child: Card(
                              margin: const EdgeInsets.all(0),
                              color: const Color(0xff252525),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.docker,
                                    color: Colors.white,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Docker',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ]),
          );
        },
      ),
    );
  }
}

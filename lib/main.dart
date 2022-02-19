import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:inventure_landing_page/widgets/marketing.dart';
import 'package:inventure_landing_page/widgets/notify.dart';
import 'package:inventure_landing_page/widgets/footer.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    var children2 = <Widget>[
            const Text('Too many paths in to Software Engineering?'),
            const Text('Have your path automated for you on 1 platform'),
            TextButton(
              onPressed: () {},
              child: const Text('Learn More'),
            ),
            Row(
              children: <Widget>[
                FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset('images/community-mock.png'),
                ),
                Expanded(
                  child: 
                    Padding(
                      padding: const EdgeInsets.all(100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Column(children: const [
                           Image(
                                image: AssetImage('images/community-icon.png')
                          ),
                          ]),
                          const SizedBox(
                            height: 100,
                            child: Text(
                              'Community',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 48,
                              ),
                            )
                            ),
                          SizedBox(
                              width: screenSize.width / 2,
                              child: const Text(
                                'Interact and grow your skills with fellow students, mentors, and professionals within A-Star',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Lato',
                                  letterSpacing: 4,
                                ),
                              )),
                        ],
                      )
                      ),
                ),
              ],
            ),
          ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Image.asset('images/Icon-192.png'),
              SizedBox(width: screenSize.width / 20),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Discover',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(width: screenSize.width / 20),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget> [
             Marketing(heading: 'Community', subHeading: 'Interact and grow your skills with fellow students, mentors, and professionals within A-Star', isFlipped: false, image: const Image(image: AssetImage( 'images/community-mock.png'))),
             Marketing(heading: 'Curated Paths', subHeading: 'Follow A star\'s AI tailored path that turns your novice programming knowledge well suited for full time positions', isFlipped: true, image: const Image(image: const AssetImage( 'images/pathways.png'))),
             Marketing(heading: 'Quality Feedback', subHeading: 'Fast learning comes from quick and transparent feedback. ', isFlipped: false, image: const Image(image: const AssetImage( 'images/community-mock.png'))),
             Notify(),
             Footer(),
          ],
        ),
      ),
    );
  }
}

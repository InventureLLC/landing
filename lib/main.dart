// import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:inventure_landing_page/widgets/marketing.dart';
import 'package:inventure_landing_page/widgets/notify.dart';

import 'package:inventure_landing_page/theme/AppTheme.dart';

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
      title: 'A Star Landing Page',
      theme: AppTheme.lightTheme,
      home: const MyHomePage(title: 'A Star'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              const Image(image: AssetImage('images/logo.png'),),
              InkWell(
                onTap: () {},
                child: Text(
                  'Discover',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              SizedBox(width: screenSize.width / 20),
              InkWell(
                onTap: () {},
                child: Text(
                  'Contact Us',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Too many paths in to Software Engineering?',
              style: Theme.of(context).textTheme.headline1
                  ?.copyWith(fontWeight: FontWeight.w400),
            ),
            Text(
              'Have your path automated for you on 1 platform',
              style: Theme.of(context).textTheme.headline1
                  ?.copyWith(color: Theme.of(context).primaryColor),
            ),
            ElevatedButton(
              onPressed: () { },
              child: Text(
                'Learn More',
                style: Theme.of(context).textTheme.button,
              ),
            ),
            const Marketing(heading: 'Community', subHeading: 'Interact and grow your skills with fellow students, mentors, and professionals within A-Star', isFlipped: false, image: Image(image: AssetImage( 'images/community-mock.png'))),
            const Marketing(heading: 'Curated Paths', subHeading: 'Follow A star\'s AI tailored path that turns your novice programming knowledge well suited for full time positions', isFlipped: true, image: Image(image: AssetImage( 'images/pathways.png'))),
            const Marketing(heading: 'Quality Feedback', subHeading: 'Fast learning comes from quick and transparent feedback. ', isFlipped: false, image: Image(image: AssetImage( 'images/community-mock.png'))),
            const Notify(),
          ],
        ),
      ),
    );
  }
}

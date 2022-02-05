import 'dart:ui';

import 'package:flutter/material.dart';

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
      body: Center(
        child: Column(
          children: <Widget>[
            const Text(
              'Too many paths in to Software Engineering?'
            ),
            const Text(
              'Have your path automated for you on 1 platform'
            ),
             TextButton(
              onPressed: () { },
              child: const Text(
                'Learn More'
              ),
            ),
            Row(
              children: <Widget>[
                const Image(
                  image: AssetImage('images/community-mock.png'),
                ),
                Expanded(
                  child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start ,
                  textDirection: TextDirection.ltr,
                  children: <Widget>[ 
                    Column(
                      children: [
                        Image(
                          image: AssetImage('images/community-icon.png')
                        ),
                      ]
                    ),
                    Container(
                      width: 505,
                      height: 66,
                      child:
                      Container(
                      width: window.physicalSize.width / 2,
                      height: 100,
                      child: (
                        const Text(
                          'Community',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 48,
                          ),
                        )
                      ),
                    ),
                    ),
                    Container(
                      width: 505,
                      child: 
                      const Text(
                      'Interact and grow your skills with fellow students, mentors, and professionals within A-Star',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Lato',
                        letterSpacing: 4,
                      ),
                    )
                    ),
                  ],
                )),
              ],
            ),
          ],
          
        ),
      ),
    );
  }
}

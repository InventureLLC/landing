import 'package:flutter/material.dart';

class Notify extends StatefulWidget {
  const Notify({Key? key}) : super(key: key);

  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    primary: const Color.fromRGBO(49, 113, 104, 1),
    shadowColor: const Color.fromRGBO(49, 113, 104, 1),
    textStyle: const TextStyle(
      color: Colors.white,
      fontFamily: 'Lato',
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    elevation: 10,
    shape: RoundedRectangleBorder(
      side: const BorderSide(
        color: Color.fromRGBO(49, 113, 104, 1),
      ),
      borderRadius: BorderRadius.circular(8),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(100),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        const Text(
          'Get notified when we launch.',
          style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'Raleway'),
        ),
        FractionallySizedBox(
          widthFactor: 0.5,
          child: Form(
              key: _formKey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const SizedBox(
                    width: 460,
                    child: TextField(
                      style: TextStyle(
                        fontFamily: 'Lato',
                      ),
                      decoration: InputDecoration(
                          labelText: 'Enter your email',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(49, 113, 104, 1),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                      height: 57,
                      child: ElevatedButton(
                        child: const Center(child: Text('Notify me')),
                        onPressed: () {},
                        style: buttonStyle,
                      )),
                ],
              )),
        )
      ]),
    );
  }
}

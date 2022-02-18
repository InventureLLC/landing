import 'package:flutter/material.dart';

class Marketing extends StatefulWidget {
  final String heading;
  final String subHeading;
  final bool isFlipped;
  final Image image;

  const Marketing(
      {Key? key,
      this.heading = 'null',
      this.subHeading = 'null',
      this.isFlipped = false,
      this.image = const Image(image: const AssetImage('assetName'))})
      : super(key: key);

  @override
  _MarketingState createState() => _MarketingState();
}

class _MarketingState extends State<Marketing> {
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    List<Widget> content = [
      FittedBox(
        fit: BoxFit.fill,
        child: widget.image,
      ),
      Expanded(
        child: Padding(
            padding: const EdgeInsets.all(100),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                textDirection: TextDirection.ltr,
                children: <Widget>[
                  Column(children: [
                    Image(image: const AssetImage('images/community-icon.png')),
                  ]),
                  SizedBox(
                    height: 100,
                    child: (Text(
                      widget.heading,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 48,
                      ),
                    )),
                  ),
                  SizedBox(
                      width: screenSize.width / 2,
                      child: Text(
                        widget.subHeading,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Lato',
                          letterSpacing: 4,
                        ),
                      )),
                ])),
      )
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: widget.isFlipped ? content.reversed.toList() : content.toList(),
    );
  }
}

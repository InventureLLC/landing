import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          // Line
          const SizedBox(
            width: 1023,
            child: Padding(
                padding: EdgeInsets.all(20),
                child: Divider(height: 0, thickness: 2, color: Colors.black)),
          ),
          SizedBox(
              width: 280,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      iconSize: 48,
                      onPressed: () async{
                        if (await canLaunch(
                            'https://www.twitter.com/twitter/')) {
                          await launch('https://www.twitter.com/twitter/');
                        }
                      },
                      icon: const Icon(MdiIcons.twitter)),
                  IconButton(
                      iconSize: 48,
                      onPressed: () async {
                        if (await canLaunch(
                            'https://www.instagram.com/Apxflex')) {
                          await launch('https://www.instagram.com/instagram/');
                        }
                      },
                      icon: const Icon(MdiIcons.instagram)),
                  IconButton(
                      iconSize: 48,
                      onPressed: () async {
                        if (await canLaunch(
                            'https://www.linkedin.com/in/linkedin/')) {
                          await launch('https://www.linkedin.com/in/linkedin/');
                        }
                      },
                      icon: const Icon(MdiIcons.linkedin)),
                ],
              ))
        ]));
  }
}

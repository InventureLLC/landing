import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: const EdgeInsets.all(20),
        child: 
          Column( 
          children:[
            // Line
            const SizedBox(
              width: 1023,
              child: Padding(
                padding: EdgeInsets.all(20), 
                child:Divider(
                height: 0,
                thickness:2,
                color: Colors.black
                )
              ),
            ),
            SizedBox(
              width: 280,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    iconSize: 48,
                    onPressed: () {
                      print('Twitter');
                    },
                    icon: const Icon(MdiIcons.twitter)),
                IconButton(
                    iconSize: 48,
                    onPressed: () {
                      print('Instagram');
                    },
                    icon: const Icon(MdiIcons.instagram)),
                IconButton(
                    iconSize: 48,
                    onPressed: () {
                      print('LinkedIn');
                    },
                    icon: const Icon(MdiIcons.linkedin)),
              ],
            )
            )
          ]
          )
      );
  }
}

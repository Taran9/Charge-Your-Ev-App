import 'package:flutter/material.dart';
import 'package:geozapp/screen/Follow_Us.dart';
import 'package:geozapp/screen/Privacy_Policy.dart';
import 'package:geozapp/screen/home_screen.dart';
import 'package:geozapp/screen/login_screen.dart';

import 'Charging.dart';

class MainDrawer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'Charge Your EV';
    //final urlImage = 'assets/images/Icon-1.png';
    return Drawer(
      child: Material(
        color: Colors.lightGreen[400],
        child: ListView(
          padding: padding,
          children: <Widget>[
            buildHeader(
              name: name,
            ),
            const SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.white,
            ),
            const SizedBox(
              height: 24,
            ),
            buidMenuItem(
              text: "Home",
              icon: Icons.home,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(
              height: 16,
            ),
            buidMenuItem(
              text: "Charging Stations",
              icon: Icons.offline_bolt,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(
              height: 16,
            ),
            buidMenuItem(
                text: "Follow Us",
                icon: Icons.tag,
                onClicked: () => selectedItem(context, 2)),
            const SizedBox(
              height: 16,
            ),
            buidMenuItem(
                text: "Privacy Policy",
                icon: Icons.privacy_tip_sharp,
                onClicked: () => selectedItem(context, 3)),
            const SizedBox(
              height: 16,
            ),
            buidMenuItem(
                text: "LogOut",
                icon: Icons.logout,
                onClicked: () => selectedItem(context, 4)),
          ],
        ),
      ),
    );
  }

  Widget buidMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  buildHeader({required String name}) => InkWell(
          child: Column(children: <Widget>[
        Container(
            padding: padding.add(EdgeInsets.symmetric(vertical: 50)),
            child: Column(children: <Widget>[
              Container(
                child: Image.asset(
                  'assets/images/Icon-1.png',
                  height: 150,
                  width: 150,
                ),
              ),
              Text(
                'GeoZapp - EVC India',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ]))
      ]));

  void selectedItem(BuildContext context, int i) {
    Navigator.of(context).pop();
    switch (i) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Charging_Stations(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Follow_Us(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Privacy_Policy(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ));
        break;
    }
  }
}

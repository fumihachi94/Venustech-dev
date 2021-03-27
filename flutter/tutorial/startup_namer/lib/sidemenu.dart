import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenu createState() => _SideMenu();
}

class _SideMenu extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'MENU',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.lightBlue[500],
            ),
          ),
          ListTile(
            title: Text('Los Angeles'),
            onTap: () {
              final snackBar = SnackBar(
                content: Text('Test!'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {},
                ),
              );
              // ignore: deprecated_member_use
              Scaffold.of(context).showSnackBar(snackBar);
            },
          ),
          ListTile(
            title: Text('Honolulu'),
            onTap: () {
              final snackBar = SnackBar(
                content: Text('Test!'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {},
                ),
              );
              // ignore: deprecated_member_use
              Scaffold.of(context).showSnackBar(snackBar);
            },
          ),
        ],
      ),
    );
  }
}

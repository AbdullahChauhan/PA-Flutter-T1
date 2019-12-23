import 'package:flutter/material.dart';
import './constants.dart';
import './assignments_screen.dart';

class NavigationDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 9,
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    child: Image.asset('assets/images/logo.png'),
                    backgroundColor: COLOR_WHITE,
                  ),
                  accountEmail: text('abd@xyz.com', color: COLOR_BLACK),
                  accountName: text('Pak Academy', color: COLOR_BLACK),
                  decoration: BoxDecoration(color: COLOR_WHITE),
                ),
                ListTile(title: Text('Dashboard'), onTap: () {}),
                Divider(
                  height: 2.0,
                ),
                ListTile(
                  title: Text('Assignments'),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) {
                      return Assignments();
                    }));
                  },
                ),
                Divider(
                  height: 2.0,
                ),
                ListTile(
                  title: Text('Programs'),
                ),
                Divider(
                  height: 2.0,
                ),
                ListTile(
                  title: Text('Logout'),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(16.0),
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: COLOR_WHITE,
                    size: 28.0,
                  ),
                  text('+92399-9999999', color: COLOR_WHITE, fontSize: 18.0)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
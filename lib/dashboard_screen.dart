import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        // centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 9,
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      child: Image.asset('assets/images/logo.png'),
                      backgroundColor: Colors.white,
                    ),
                    accountEmail: Text(
                      'abd@xyz.com',
                      style: TextStyle(color: Colors.black),
                    ),
                    accountName: Text(
                      'PakAcademy',
                      style: TextStyle(color: Colors.black),
                    ),
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  ListTile(
                    title: Text('Dashboard'),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Assignments'),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Programs'),
                  ),
                  Divider(),
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
                  children: <Widget>[Icon(Icons.phone, color: Colors.white, size: 28.0,), Text('+92399-9999999', style: TextStyle(color: Colors.white, fontSize: 18.0),)],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

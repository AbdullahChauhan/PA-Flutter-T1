import 'package:flutter/material.dart';
import 'package:pa_flutter_t1/assignments_screen.dart';

import './assignment_listitem.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
        actions: <Widget>[],
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
                      color: Colors.white,
                      size: 28.0,
                    ),
                    Text(
                      '+92399-9999999',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Assalam o Alaikum,',
              style: TextStyle(fontSize: 24.0),
            ),
            Text(
              'Abdullah Chauhan',
              style: TextStyle(
                  fontSize: 16.0, color: Theme.of(context).primaryColor),
            ),
            SizedBox(
              height: 12.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 16.0),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black12),
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            '30',
                            style: TextStyle(
                              fontSize: 36.0,
                            ),
                          ),
                          Text('Total Assignments')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 16.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0.0, 10.0),
                            blurRadius: 10.0,
                          )
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            '50%',
                            style:
                                TextStyle(fontSize: 36.0, color: Colors.white),
                          ),
                          Text(
                            'Total Percentage',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              'Current Assignments',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Container(
              height: 175,
              child: ListView(
                children: <Widget>[
                  AssignmentListItem(
                    assignmentName: 'TMS',
                    courseName: 'Flutter Course',
                    status: 'Pending',
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  AssignmentListItem(
                    assignmentName: 'Website Design',
                    courseName: 'UI/UX Course',
                    status: 'To Late',
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  AssignmentListItem(
                    assignmentName: 'Database Design',
                    courseName: 'RDBMS Course',
                    status: 'Submit',
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  AssignmentListItem(
                    assignmentName: 'Home Automation',
                    courseName: 'IOT Course',
                    status: 'To Late',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              'My Programs',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black12),
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Flutter Course',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(6.0),
                          bottomRight: Radius.circular(6.0)),
                      child: Container(
                          width: 110.0,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                '3 Months',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Remaining',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          )),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

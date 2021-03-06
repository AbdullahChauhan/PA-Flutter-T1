import 'package:flutter/material.dart';
import '../constants.dart';
import '../resuable_widgets/resuable_func.dart';
import '../resuable_widgets/navigationdrawer.dart';
import '../resuable_widgets/assignment_listitem.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: COLOR_WHITE,
        textTheme: Theme.of(context).textTheme,
        iconTheme: Theme.of(context).iconTheme,
        centerTitle: true,
        actions: <Widget>[],
      ),
      drawer: NavigationDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              text('Assalam o Alaikum,', fontSize: 24.0),
              text('Abdullah Chauhan', color: COLOR_PRIMARY, fontSize: 18.0),
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
                            text('30', fontSize: 36.0),
                            text('Total Assignments', fontSize: 12.0)
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
                            text('50%', color: COLOR_WHITE, fontSize: 36.0),
                            text(
                              'Total Percentage',
                              color: COLOR_WHITE,
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
              text('Current Assignments', fontSize: 18.0),
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
              text('My Programs', fontSize: 18.0),
              SizedBox(
                height: 12.0,
              ),
              Container(
                  height: 60,
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
                        child: text('Flutter Course', fontSize: 18.0),
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
                                text('3 Months',
                                    fontSize: 16.0,
                                    color: COLOR_WHITE,
                                    fontWeight: FontWeight.bold),
                                text(
                                  'Remaining',
                                  fontSize: 14.0,
                                  color: COLOR_WHITE,
                                ),
                              ],
                            )),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}



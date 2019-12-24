import 'package:flutter/material.dart';
import '../constants.dart';
import '../resuable_widgets/assignment_listitem.dart';

class Assignments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignments'),
        centerTitle: true,
        backgroundColor: COLOR_WHITE,
        textTheme: Theme.of(context).textTheme,
        iconTheme: Theme.of(context).iconTheme,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
                  children: <Widget>[
                    AssignmentListItem(assignmentName: 'TMS', courseName: 'Flutter Course', status: 'Pending',),
                    SizedBox(
                      height: 8.0,
                    ),
                    AssignmentListItem(assignmentName: 'Website Design', courseName: 'UI/UX Course', status: 'To Late',),
                    SizedBox(
                      height: 8.0,
                    ),
                    AssignmentListItem(assignmentName: 'Database Design', courseName: 'RDBMS Course', status: 'Submit',),
                    SizedBox(
                      height: 8.0,
                    ),
                    AssignmentListItem(assignmentName: 'Home Automation', courseName: 'IOT Course', status: 'To Late',),
                    SizedBox(
                      height: 8.0,
                    ),
                    AssignmentListItem(assignmentName: 'TMS', courseName: 'Flutter Course', status: 'Pending',),
                    SizedBox(
                      height: 8.0,
                    ),
                    AssignmentListItem(assignmentName: 'Website Design', courseName: 'UI/UX Course', status: 'To Late',),
                    SizedBox(
                      height: 8.0,
                    ),
                    AssignmentListItem(assignmentName: 'Database Design', courseName: 'RDBMS Course', status: 'Submit',),
                    SizedBox(
                      height: 8.0,
                    ),
                    AssignmentListItem(assignmentName: 'Home Automation', courseName: 'IOT Course', status: 'To Late',),
                     SizedBox(
                      height: 8.0,
                    ),
                    AssignmentListItem(assignmentName: 'TMS', courseName: 'Flutter Course', status: 'Pending',),
                    SizedBox(
                      height: 8.0,
                    ),
                    AssignmentListItem(assignmentName: 'Website Design', courseName: 'UI/UX Course', status: 'To Late',),
                    SizedBox(
                      height: 8.0,
                    ),
                    AssignmentListItem(assignmentName: 'Database Design', courseName: 'RDBMS Course', status: 'Submit',),
                    SizedBox(
                      height: 8.0,
                    ),
                    AssignmentListItem(assignmentName: 'Home Automation', courseName: 'IOT Course', status: 'To Late',),
                  ],
                ),
      ),
    );
  }
}
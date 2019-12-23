import 'package:flutter/material.dart';
import './assignmentdetail_screen.dart';

class AssignmentListItem extends StatelessWidget {
  final String assignmentName;
  final String courseName;
  final String status;
  Color color;

  AssignmentListItem(
      {@required this.assignmentName,
      @required this.courseName,
      @required this.status});

  Color checkStatus(String status) {
    status = status.toLowerCase();
    switch (status) {
      case 'submit':
        return color = Colors.green;
      case 'pending':
        return color = Colors.yellow[600];
      case 'to late':
        return color = Colors.redAccent;
    }
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black12),
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
      ),
      child: ListTile(
        leading: Icon(
          Icons.assignment,
          color: Theme.of(context).primaryColor,
          size: 32.0,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('$assignmentName'),
            Text(
              '$courseName',
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 14.0),
            ),
          ],
        ),
        trailing: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
          decoration: BoxDecoration(
            color: checkStatus(status),
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          child: Text(
            '$status',
            style: TextStyle(color: Colors.white),
          ),
        ),
        onTap: () {
          Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return AssignementDetail(assignmentName: assignmentName, courseName: courseName,);
                      }));
        },
      ),
    );
  }
}

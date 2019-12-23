import 'package:flutter/material.dart';
import 'package:pa_flutter_t1/constants.dart';

class AssignementDetail extends StatelessWidget {
  final String assignmentName;
  final String courseName;

  const AssignementDetail(
      {@required this.assignmentName, @required this.courseName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment Detail'),
        centerTitle: true,
        backgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme,
        iconTheme: Theme.of(context).iconTheme,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.asset(
                  'assets/images/imgBg.png',
                  fit: BoxFit.cover,
                ),
                Positioned(
                    bottom: 25.0,
                    left: 25.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        text(assignmentName, fontSize: 22.0),
                        text(courseName, fontSize: 18.0, fontWeight: FontWeight.bold),
                      ],
                    )),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                      "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book."),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'You can submit your task till',
                    style: TextStyle(color: Colors.red),
                  ),
                  SizedBox(height: 4.0,),
                  Text(
                    'Date: 10th Jan 2020',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(height: 16.0,),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    padding: EdgeInsets.all(12),
                    color: Theme.of(context).primaryColor,
                    child: Center(
                        child: Text(
                      'Submit Assignment',
                      style: TextStyle(color: Colors.white),
                    )),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

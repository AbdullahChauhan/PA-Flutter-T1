import 'package:flutter/material.dart';
import './dashboard_screen.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(),
          Center(
            child: CircleAvatar(
              child: Image.asset('assets/images/logo.png'),
              backgroundColor: Colors.white,
              maxRadius: 75.0,
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  decoration: InputDecoration(
                    hintText: 'Enter Username',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: EdgeInsets.all(12),
                  color: Theme.of(context).primaryColor,
                  child: Center(
                      child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white),
                  )),
                  onPressed: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Dashboard();
                  })),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Powered by '),
              Text(
                'PakStudents',
                style: TextStyle(color: Theme.of(context).primaryColor),
              )
            ],
          )
        ],
      ),
    );
  }
}

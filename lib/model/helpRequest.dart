import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HelpFormState extends State<HelpForm> {
  String name, email, complaint;

  FocusNode focusTwo = FocusNode();
  FocusNode focusThree = FocusNode();

  final _controllerName = TextEditingController();
  final _controllerEmail = TextEditingController();
  final _controllerComplaint = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Help Request Form',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
          ),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(
                controller: _controllerName,
                textAlign: TextAlign.center,
                autocorrect: false,
                validator: (value) {
                  if (value.isEmpty) return 'Please enter your name';
                  return null;
                },
                onChanged: (text) {
                  print(name);
                  name = text;
                },
                decoration: InputDecoration(
                  labelText: 'Name:',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 60.0),
            Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(
                controller: _controllerEmail,
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                validator: (value) {
                  if (!email.contains('@')) return 'Please enter a valid email';
                  if (!email.contains('.')) return 'Please enter a valid email';
                  return null;
                },
                onChanged: (text) {
                  email = text;
                },
                decoration: InputDecoration(
                  labelText: 'Email:',
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                ),
              ),
            ),
            SizedBox(height: 60.0),
            Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextFormField(
                controller: _controllerComplaint,
                maxLines: 16,
                keyboardType: TextInputType.multiline,
                autocorrect: false,
                validator: (value) {
                  if (value.isEmpty) return 'Please enter some text';
                  return null;
                },
                onChanged: (text) {
                  complaint = text;
                },
                decoration: InputDecoration(
                  hintText: 'Enter your complaint',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 50),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100.0, 20.0, 100.0, 0.0),
              child: RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Firestore.instance
                        .collection('Complaints')
                        .document(name)
                        .setData({
                      'email': email,
                      'complaint': complaint,
                    });

                    _controllerName.clear();
                    _controllerEmail.clear();
                    _controllerComplaint.clear();

                    _scaffoldKey.currentState.showSnackBar(SnackBar(
                      content: Container(
                        height: 25.0,
                        child: Text('Help Request Sent!',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      duration: Duration(seconds: 3),
                    ));
                  }
                },
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HelpForm extends StatefulWidget {
  @override
  HelpFormState createState() => HelpFormState();
}

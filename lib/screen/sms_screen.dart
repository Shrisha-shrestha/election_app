import 'package:flutter/material.dart';

class sms extends StatefulWidget {
  @override
  _smsState createState() => _smsState();
}

class _smsState extends State<sms> {
  String fullName = '';
  String language="EN";
  Map data={'lang':'EN'};
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? ModalRoute.of(context)!.settings.arguments as Map<String, String>:data;
    final String  language = data['lang'];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {Navigator.pop(context);},
              icon: Icon(Icons.arrow_back),
            ),
            title: (language=="NP")? Text('क्रियाकलाप एस. एम. एस. पठाउन',)
                : Text('Send Event SMS'),
             backgroundColor: Theme.of(context).primaryColor,
          ),
          body: Center(child: Column(children: <Widget>[
            Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide( color: Theme.of(context).primaryColor),
                    ),
                    labelText: (language=="NP")? 'मोबाइल नम्बर':'Mobile Number',
                    labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  onChanged: (text) {
                    setState(() {
                      fullName = text;
                      //you can also access nameController in its scope to get the value of text entered as shown below
                                                      //fullName = nameController.text;
                    });
                  },
                ),
            ),

            Container(
              width: 350.0,
              height: 30.0,
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              color: Theme.of(context).primaryColor,
              child: TextButton(onPressed:(){},
                   child: Text('GO',
                   style: TextStyle(
                     color: Colors.white,
                   ),),)
            )
          ]))),
    );
  }
}

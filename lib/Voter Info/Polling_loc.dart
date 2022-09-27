import 'package:flutter/material.dart';

class PL extends StatefulWidget {
  @override
  _PLState createState() => _PLState();
}

class _PLState extends State<PL> {
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
            title: (language=="NP")? Text('मतदान स्थल / केन्द्र',)
                : Text('Polling Location/Center'),
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
                  labelText: (language=="NP")? 'मतदाता नम्बर':'Voter No.',
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
                width: 355.0,
                height: 30.0,
                color: Theme.of(context).primaryColor,
                child: TextButton(onPressed:(){},
                  child: (language=="NP")?Text('खोज',style: TextStyle(color: Colors.white,),):Text('SEARCH',
                    style: TextStyle(
                      color: Colors.white,
                    ),),)
            ),
          ]))),
    );
  }
}

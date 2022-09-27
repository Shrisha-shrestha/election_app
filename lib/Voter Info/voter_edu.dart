import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class VE extends StatefulWidget {
  const VE({Key? key}) : super(key: key);

  @override
  State<VE> createState() => _VEState();
}

class _VEState extends State<VE> {
  _launchURLBrowser() async {
    const url = 'https://www.youtube.com/channel/UCQ1iYWQDmp5cAB-bb-107AQ';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  String language="EN";

  Map data={'lang':'EN'};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? ModalRoute.of(context)!.settings.arguments as Map<String, String>:data;
    final String  language = data['lang'];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
          title: (language=="NP")? Text('मतदाता शिक्षा',)
        : Text('Voter Education'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              color: Theme.of(context).primaryColor,
              onPressed: _launchURLBrowser,
              child: (language=="NP")? Text('वेबसाइटमा जानुहोस्',style: TextStyle(color: Colors.white)):
                Text('Go to website',style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}

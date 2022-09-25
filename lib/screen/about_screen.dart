import 'package:flutter/material.dart';

class about extends StatelessWidget {
  about({Key? key}) : super(key: key);
  String language="EN";
  Map data={'lang':'EN'};
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? ModalRoute.of(context)!.settings.arguments as Map<String, String>:data;
    final String  language = data['lang'];
    return Scaffold(
        appBar: AppBar(
        title: (language=="NP")? Text('बारेमा',)
            : Text('About'),
          backgroundColor: Theme.of(context).primaryColor,
    ),
    body:Center(
    child:(language=="NP")? Text('ECN Application\nसंस्करण ४.०.१\nविकासकर्ता:\nनिर्वाचन आयोग,ेपाल\nकान्तिपथ,काठमाडौं\nफोन : (८७७-०१) ४२२८६६३ / ४२२५५८० \nईमेल : info@election.gov.np\nURL: www.election.gov.np\nफ्याक्स: ९७७-०१) ४२२८२२७ / ४२२५५८०\nपावर्ड बाई:\nप्रोफेस्सनल कम्प्युटर सिस्टम प्रा. लि.\n',
      style: TextStyle(
      color: Colors.grey,
    ),
      textAlign: TextAlign.center,
    )
      :Text('ECN Application\nVersion 4.0.1\nDeveloped by:\nElection Commission,Nepal\nKantipath,Kathmandu\nPhone: (977-01) 4228663/4225580\nEmail: info@election.gov.np\nURL: www.election.gov.np\nFax: (977-01) 4229227/4225580\nPowered By:\nProfessional Computer System (P).Ltd.\n',
    style: TextStyle(
        color: Colors.grey,
    ),
      textAlign: TextAlign.center,
    ) ,
    ),
    );
  }
}

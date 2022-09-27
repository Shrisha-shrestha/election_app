
import 'package:flutter/material.dart';
import '../screen/about_screen.dart';
import '../screen/candidate_screen.dart';
import '../screen/home.dart';
import '../screen/result_screen.dart';
import '../screen/sms_screen.dart';
import '../screen/voter_screen.dart';
import '../Voter Info/Voter_info.dart';
import '../Voter Info/Detailed_voter.dart';
import '../Voter Info/Polling_loc.dart';

import '../Voter Info/voter_edu.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.red),
    initialRoute: '/',
        routes: {
      '/' : (context) => home(),
      '/about': (context) => about(),
      '/candidate':(context) => candidate(),
      '/result':(context) => result(),
      '/sms':(context) => sms(),
      '/voter':(context) => voter(),
              '/VI':(context) => VI(),
          '/PL':(context) => PL(),
          '/DV':(context) => DV(),
          '/VE':(context) => VE(),
    }
));
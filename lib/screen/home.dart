import 'package:flutter/material.dart';
import '../models/home_model.dart';
 class home extends StatefulWidget {
   const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Map data={'lang':'EN'};
   @override
   Widget build(BuildContext context) {
     String  language = data['lang'];
     return  Material(
       child: SafeArea(
         child: Column(
           children: <Widget>[
             Row(
               children: <Widget>[
                 Container(
                   color: Theme.of(context).primaryColor,
                   width: MediaQuery.of(context).size.width,
                   height: 72.0,
                   padding: EdgeInsets.all(12.0),
                   child: Column(
                     children: <Widget>[
                       Row(
                         children:<Widget> [
                           Text('ECN APP',
                             style: TextStyle(
                               fontSize: 20.0,
                               letterSpacing: 2.0,
                               fontWeight: FontWeight.bold,
                               color: Colors.white,
                             ),),

                           SizedBox(width: 132.0,),
                           TextButton(
                             onPressed: (){setState(() {
                               data = {
                                 'lang': 'EN',
                               };
                             });
                               },
                             child: Text('EN',
                               style: TextStyle(
                                 fontSize: 15.0,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),),
                           ),
                           TextButton(
                             onPressed: (){setState(() {
                               data = {
                                 'lang': 'NP',
                               };
                             });},
                             child: Text('NP',
                               style: TextStyle(
                                 fontSize: 15.0,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),),
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
               ],
             ),
             Container(
               color: Colors.cyan[50],
               height: 250.0,
               child: Center(
                 child: Image.asset('assets/ecn.png',
                   height: 250.0,
                   width: 250.0,),
               ),
             ),

             Container(
               height: 390.0,
               child: ListView.builder(
                 scrollDirection: Axis.vertical,
                 itemCount:homeoptions.length,
                 itemBuilder:(BuildContext context,int index) {
                   final options f_opt=homeoptions[index];
                   return Card(
                     child: ListTile(
                       onTap: (){
                         Navigator.pushNamed(context,'${f_opt.nav}',
                           arguments: <String, String>{"lang" : language},

                       );},
                       leading: CircleAvatar(
                         backgroundImage: AssetImage('assets/${f_opt.pic}',),
                       ),
                       title:(language=="NP")? Padding(
                         padding: const EdgeInsets.only(top: 6.0,bottom: 5.0),
                         child: Text(f_opt.neptitle,
                           style: TextStyle(
                             color: Colors.blueGrey[700],
                             fontSize: 15.0,
                             fontWeight: FontWeight.w900,
                           ),
                         ),
                       )
                           :
                       Text(f_opt.title,
                         style: TextStyle(
                           color: Colors.blueGrey[700],
                           fontSize: 15.0,
                           fontWeight: FontWeight.w900,
                         ),
                       ),
                       subtitle: (language=="NP")? Padding(
                         padding: const EdgeInsets.only(bottom: 5.0),
                         child: Text(f_opt.neptxt,
                           style: TextStyle(
                             color: Colors.blueGrey,
                             fontSize: 10.0,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       )
                           :
                       Text(f_opt.text,
                         style: TextStyle(
                           color: Colors.blueGrey,
                           fontSize: 10.0,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                     ),
                   );
                 },
               ),
             ),


           ],
         ),
       ),
     );
   }
}

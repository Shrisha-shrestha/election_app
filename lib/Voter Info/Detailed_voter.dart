import 'package:flutter/material.dart';

class DV extends StatefulWidget {
  const DV({Key? key}) : super(key: key);

  @override
  State<DV> createState() => _DVState();
}
String m="जन्म मिति",o="नागरिकता नं.";
enum sex { Date_of_Birth,CitizenshipNo,j,n }
class _DVState extends State<DV> {
  String? voter_no;
  bool show1=false,show2=false;

  String? language="EN";

  Map data={'lang':'EN'};
  sex? choose;

  Detailedoption1(){
    return   Container(
      padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0 ),
      width: MediaQuery.of(context).size.width,
      child:Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              onChanged: (value){
                setState(() {// msg=value;});
                },);},
              decoration: InputDecoration.collapsed(//to remove red line
                hintText:(language=="NP")?'साल': 'Year',
              ),
            ),
          ),

          Expanded(
            child: TextField(
              onChanged: (value){
                setState(() {// msg=value;});
                },);},
              decoration: InputDecoration.collapsed(//to remove red line
                hintText: (language=="NP")?'महिना':'Month',
              ),
            ),
          ),

          Expanded(
            child: TextField(
              onChanged: (value){
                setState(() {// msg=value;});
                },);},
              decoration: InputDecoration.collapsed(//to remove red line
                hintText: (language=="NP")?'गते':'Day',
              ),
            ),
          ),

        ],
      ),
    );
  }
  Detailedoption2(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0 ),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide( color: Theme.of(context).primaryColor),
          ),
          labelText: (language=="NP")? 'नागरिकता नं.':'Citizenship Number',
          labelStyle: TextStyle(color: Theme.of(context).primaryColor),
        ),
        onChanged: (text) {
          setState(() {
            voter_no = text;
          });
        },
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? ModalRoute.of(context)!.settings.arguments as Map<String, String>:data;
    final String  language = data['lang'];
    return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {Navigator.pop(context);},
              icon: Icon(Icons.arrow_back),
            ),
            title: (language=="NP")? Text('मतदाताको बिस्तृत विवरण')
                : Text('Detailed Voter Info'),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          body: Container(
            margin: EdgeInsets.only(right: 20.0,left: 5.0),
            child: Column(children: <Widget>[
              Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide( color: Theme.of(context).primaryColor),
                ),
                labelText: (language=="NP")? 'मतदाता नं.':'Voter Number',
                labelStyle: TextStyle(color: Theme.of(context).primaryColor),
              ),
              onChanged: (text) {
                setState(() {
                  voter_no = text;
                  //you can also access nameController in its scope to get the value of text entered as shown below
                  //fullName = nameController.text;
                });
              },
            ),
              ),

              Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
               Container(child:Row(
                 children: <Widget>[
                   Radio(
                     value: (language=="NP")?sex.j:sex.Date_of_Birth,
                     groupValue: choose,
                     onChanged: (sex? value) {
                       setState(() {
                         choose = value!;
                         show1=true;
                         show2=false;
                       });
                     },
                   ),
                   (language=="NP")? Text('जन्म मिति',style: TextStyle(color: Colors.grey),)
                       : Text('Date of Birth.',style: TextStyle(color: Colors.grey),),
                 ],
               ),),


                Container(child:Row(
                  children: <Widget>[
                    Radio(
                  value:  (language=="NP")?sex.n:sex.CitizenshipNo,
                  groupValue: choose,
                  onChanged: (sex? value) {
                    setState(() {
                      choose = value!;
                      show2=true;
                      show1=false;
                    });
                  },
                ),
                (language=="NP")? Text('नागरिकता नं.',style: TextStyle(color: Colors.grey),)
                    : Text('Citizenship No..',style: TextStyle(color: Colors.grey),),
              ],
            ),
              ),
              ],),),

              Visibility(visible: show1,
                child: Detailedoption1(),
              ),

              Visibility(visible: show2,
                child: Detailedoption2(),
              ),

              Container(
              width: 365.0,
              height: 30.0,
              margin: EdgeInsets.only(left: 12.0),
              color: Theme.of(context).primaryColor,
              child: TextButton(onPressed:(){},
                child: (language=="NP")?Text('खोज',style: TextStyle(color: Colors.white,),):Text('SEARCH',
                  style: TextStyle(
                    color: Colors.white,
                  ),),)
              ),

            ]),
          )
    );
  }
}

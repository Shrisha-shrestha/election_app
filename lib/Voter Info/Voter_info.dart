import 'package:flutter/material.dart';

class  VI extends StatefulWidget {
  VI ({Key? key}) : super(key: key);

  @override
  State<VI> createState() => _VIState();
}
String p = "पुरुष",m="महिला",o="अरु";
enum sex { Male, Female, Other,p,m,o }
class _VIState extends State<VI> {
  String? language="EN";
  Map data={'lang':'EN'};
  String sv1= "",sv2= "",sv3= "",sv4 = "";

  var nepitems = ['','प्रदेश १',  'मधेश प्रदेश',  'बागमती प्रदेश',  'गण्डकी प्रदेश', 'लुम्बिनी प्रदेश', 'कर्णाली प्रदेश',  'सुदूरपश्चिम प्रदेश'];
  var items = ['','Province No. 1', 'Madhesh Province','Bagmati Province','Gandaki Province', 'Lumbini Province',
  'Karnali Province','Sudurpaschim Province'];

  var districts =['','Taplejung', 'Phidim', 'Bhojpur','Ilam', 'Chandragadi', 'Morang', 'Inaruwa', 'Dhankutta', 'Khandbari', 'Bhojpur', 'Terhathum', 'Okhaldunga', 'Diktel',
    'Solusalleri', 'Gaighat', 'Rajbiraj', 'Siraha', 'Dhanusa', 'Jaleswor', 'Malangwa', 'Sindhuligadi', 'Manthali', 'Charikot', 'Sindhupalchauk', 'Dhulikhel',
    'Lalitpur', 'Bhaktapur', 'Kathmandu', 'Bidur', 'Dhunche', 'Dhadingbeshi', 'Makwanpur', 'Gaur', 'Bharatpur', 'Gorkha', 'Beshisahar', 'Damauli', 'Putalikhel', 'Pokhara', 'Chame', 'Mustang',
    'Kusma', 'Baini', 'Baglung', 'Gulmi', 'Tansen', 'Parasi', 'Bhairawa', 'Sandhikarka', 'Taulihawa', 'Pyuthan', 'Libang', 'Musikot', 'Muskikot', 'Salyan',
    'Ghorahi', 'Birendranagar', 'Nepalgunj', 'Jajarkot', 'Dolpa', 'Simikot', 'Manma', 'Gamgadi', 'Jumla', 'Bajura', 'Chainpur', 'Mangalsen', 'Silgadi', 'Dhangadi', 'Kanchanpur', 'Dadeldhura', 'Baitadi', 'Darchula'];
 var nepdistricts=['','भोजपुर', 'धनकुटा', 'इलाम', 'झापा', 'खोटाँग', 'मोरंग', 'ओखलढुंगा', 'पांचथर', 'संखुवासभा', 'सोलुखुम्बू', 'सुनसरी', 'ताप्लेजुंग', 'तेह्रथुम', 'उदयपुर', 'पर्सा', 'बारा', 'रौतहट', 'सर्लाही', 'धनुषा',
 'सिराहा', 'महोत्तरी', 'सप्तरी', 'सिन्धुली', 'रामेछाप', 'दोलखा', 'भक्तपुर', 'धादिङ', 'काठमाडौँ', 'काभ्रेपलान्चोक', 'ललितपुर', 'नुवाकोट', 'रसुवा', 'सिन्धुपाल्चोक', 'चितवन',
 'मकवानपुर', 'बागलुङ', 'गोरखा', 'कास्की', 'लमजुङ', 'मनाङ', 'मुस्ताङ', 'म्याग्दी', 'नवलपुर', 'पर्वत', 'स्याङग्जा', 'तनहुँ', 'कपिलवस्तु', 'परासी', 'रुपन्देही', 'अर्घाखाँची', 'गुल्मी', 'पाल्पा', 'दाङ', 'प्युठान', 'रोल्पा', 'पूर्वी ', 'रूकुम',
 'बाँके', 'बर्दिया', 'पश्चिमी ', 'रूकुम', 'सल्यान', 'डोल्पा', 'हुम्ला', 'जुम्ला', 'कालिकोट', 'मुगु', 'सुर्खेत', 'दैलेख', 'जाजरकोट', 'कैलाली', 'अछाम', 'डोटी', 'बझाङ', 'बाजुरा', 'कंचनपुर', 'डडेलधुरा', 'बैतडी', 'दार्चुला'
  ];

 var nagarpalika=['','Nagarpalika 1','Nagarpalika 2','Nagarpalika 3','Nagarpalika 4','Nagarpalika 5','Nagarpalika 6',];
  var nepnagarpalika=['','नगरपालिका १','नगरपालिका २','नगरपालिका ३','नगरपालिका ४','नगरपालिका ५','नगरपालिका ६',];

  var ward=['','1','2','3','4','5','6',];
  var nepward=['', '१' ,'२', '३' ,'४', '५' ,'६'];

  sex? choose;
 @override
  Widget build(BuildContext context) {
     data = data.isNotEmpty ? ModalRoute.of(context)!.settings.arguments as Map<String, String>:data;
    final String  language = data['lang'];

         return Material(
        child:Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: (language=="NP")? Text('मतदाता नं. खोज',)
                : Text('Voter No. Search'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    (language=="NP")? Text('प्रदेश',style: TextStyle(color: Colors.grey),)
                        : Text('State',style: TextStyle(color: Colors.grey),),
                    DropdownButton(
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      onChanged: (String? newValue) {
                        setState(() {
                          sv1 = newValue!;
                        });},
                      items: (language=="NP")? nepitems.map((String nepitems) {
                        return DropdownMenuItem(
                          value: nepitems,
                          child: Text(nepitems),
                        );
                      }).toList()
                      : items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      value: sv1,
                    )
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    (language=="NP")? Text('जिल्ला',style: TextStyle(color: Colors.grey),)
                        : Text('District',style: TextStyle(color: Colors.grey),),
                    DropdownButton(
                      menuMaxHeight: 300.0,
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      onChanged: (String? newValue) {
                        setState(() {
                          sv2 = newValue!;
                        });},
                      items: (language=="NP")? nepdistricts.map((String nepdistricts) {
                        return DropdownMenuItem(
                          value: nepdistricts,
                          child: Text(nepdistricts),
                        );
                      }).toList()
                          : districts.map((String districts) {
                        return DropdownMenuItem(
                          value: districts,
                          child: Text(districts),
                        );
                      }).toList(),
                      value: sv2,
                    )
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    (language=="NP")? Text('स्थानीय तह',style: TextStyle(color: Colors.grey),)
                        : Text('Local Level',style: TextStyle(color: Colors.grey),),
                    DropdownButton(
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      onChanged: (String? newValue) {
                        setState(() {
                          sv3 = newValue!;
                        });},
                      items: (language=="NP")? nepnagarpalika.map((String nepnagarpalika) {
                        return DropdownMenuItem(
                          value: nepnagarpalika,
                          child: Text(nepnagarpalika),
                        );
                      }).toList()
                          : nagarpalika.map((String nagarpalika) {
                        return DropdownMenuItem(
                          value: nagarpalika,
                          child: Text(nagarpalika),
                        );
                      }).toList(),
                      value: sv3,
                    )
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    (language=="NP")? Text('वार्ड नं',style: TextStyle(color: Colors.grey),)
                        : Text('Ward No.',style: TextStyle(color: Colors.grey),),
                    DropdownButton(
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      onChanged: (String? newValue) {
                        setState(() {
                          sv4 = newValue!;
                        });},
                      items: (language=="NP")? nepward.map((String nepward) {
                        return DropdownMenuItem(
                          value: nepward,
                          child: Text(nepward),
                        );
                      }).toList()
                          : ward.map((String ward) {
                        return DropdownMenuItem(
                          value: ward,
                          child: Text(ward),
                        );
                      }).toList(),
                      value: sv4,
                    )
                  ],
                ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                (language=="NP")? Text('लिङ्ग',style: TextStyle(color: Colors.grey),)
                    : Text('Sex.',style: TextStyle(color: Colors.grey),),

                Container(
                  child: Row(
                      children: <Widget>[
                        Radio(
                          value: (language=="NP")?sex.m:sex.Female,
                          groupValue: choose,
                          onChanged: (sex? value) {
                            setState(() {
                              choose = value!;
                            });
                          },
                        ),
                        (language=="NP")? Text('महिला',style: TextStyle(color: Colors.grey),)
                            : Text('Female.',style: TextStyle(color: Colors.grey),),

                        Radio(
                          value: (language=="NP")?sex.p:sex.Male,
                          groupValue: choose,
                          onChanged: (sex? value) {
                            setState(() {
                              choose = value!;
                            });
                          },
                        ),
                        (language=="NP")? Text('पुरुष',style: TextStyle(color: Colors.grey),)
                            : Text('Male.',style: TextStyle(color: Colors.grey),),

                        Radio(
                          value:  (language=="NP")?sex.o:sex.Other,
                          groupValue: choose,
                          onChanged: (sex? value) {
                            setState(() {
                              choose = value!;
                            });
                          },
                        ),
                        (language=="NP")? Text('अरु',style: TextStyle(color: Colors.grey),)
                            : Text('Other.',style: TextStyle(color: Colors.grey),),
                      ],
                  ),
                ),
                    ],
                    ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                (language=="NP")? Text('जन्म मिति',style: TextStyle(color: Colors.grey),)
                    : Text('Date of Birth.',style: TextStyle(color: Colors.grey),),

                Container(
                  padding: EdgeInsets.only(left: 30.0),
                  width: MediaQuery.of(context).size.width*0.6,
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
                )


            ],
          ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Container(
                      width: 380.0,
                      height: 30.0,
                      color: Theme.of(context).primaryColor,
                      child: TextButton(onPressed:(){},
                        child: (language=="NP")?Text('खोज',style: TextStyle(color: Colors.white,),):
                        Text('Search',style: TextStyle(color: Colors.white,),)
                      )
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}

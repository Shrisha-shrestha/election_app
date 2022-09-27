
class options{
  final String title;
  final  String text;
  final String pic;
  final String nav;
  final String neptitle;
  final String neptxt;
  options({required this.neptxt,required this.title,required this.text, required this.pic, required this.nav, required this.neptitle});
}

//home screen
List<options> homeoptions =[
  options(neptxt:'मतदाता नं. खोज, मतदाताको बिस्तृत विवरण, मतदान स्थल / केन्द्र,मतदाता शिक्षा',neptitle:'मतदाता विवरण र शिक्षा',nav:'/voter',pic:'1.png', title:'Voter Info & Education',text:'Voter No. Search, Voter Details, Poling Location, Voter Education'),
  options(neptxt:'अन्तिम उम्मेदवारहरुको सूची र कुल मतदाताको सङ्ख्या',neptitle:'उम्मेदवार सूची र मतदाता सङ्ख्या',nav:'/candidate',pic:'2.png',title:'Candidate List & Voter Count',text:'Final Candidates with total number of votes'),
  options(neptxt:'निर्वाचन परिणाम सहित उम्मेदवारको सूची',neptitle:'निर्वाचन नतिजा',nav:'/result',pic:'3.png',title:'Election Result',text:'Election Summary and Detailed Result'),
  options(neptxt:'अधिकृतले निर्वाचन क्रियाकलापका बारेमा एसएमएस गर्नका लागि',neptitle:'क्रियाकलाप एस. एम. एस. पठाउन',nav:'/sms',pic:'4.png',title:'Send Event SMS',text:'Authentication based SMS for Election Event ( Sent by officials)'),
  options(neptxt:'ECN App को बारेमा',neptitle:'बारेमा',nav:'/about',pic:'5.png',title:'About',text:'About ECN Application'),
];

class election{
  final String title;
  final String neptitle;
  final String pic;
  final String nav;
  election({required this.neptitle,required this.title, required this.pic,required this.nav});
}

//home screen
List<election> resoptions =[
  election(nav:'',neptitle:'राष्ट्रपति निर्वाचन',title: 'Presidential Election', pic: '6.png'),
  election(nav:'',neptitle:'उपराष्ट्रपति निर्वाचन',title: 'Vice-Presidential Election', pic: '6.png'),
  election(nav:'',neptitle:'राष्ट्रिय सभा सदस्य निर्वाचन',title: 'National Assembly Election', pic: '7.png'),
  election(nav:'',neptitle:'प्रतिनिधि सभा सदस्य निर्वाचन (पहिलो हुने निर्वाचित हुने)',title: 'House of Representative Election(FPTP)', pic: '7.png'),
  election(nav:'',neptitle:'प्रतिनिधि सभा सदस्य निर्वाचन (समानुपातिक)',title: 'House of Representative Election(PR)', pic: '7.png'),
  election(nav:'',neptitle:'पप्रदेश सभा सदस्य निर्वाचन (पहिलो हुने निर्वाचित हुने)',title: 'Provincial Assembly Election(FPTP)', pic: '8.png'),
  election(nav:'',neptitle:'प्रदेश सभा सदस्य निर्वाचन (समानुपातिक)',title: 'Provincial Assembly Election(PR)', pic: '8.png'),
  election(nav:'',neptitle:'स्थानीय तह निर्वाचन',title: 'Local Level Election', pic: '9.png'),
];

List<election> voteroptions =[
  election(nav:'',neptitle:'राष्ट्रपति निर्वाचन',title: 'Presidential Election', pic: '6.png'),
  election(nav:'',neptitle:'उपराष्ट्रपति निर्वाचन',title: 'Vice-Presidential Election', pic: '6.png'),
  election(nav:'',neptitle:'राष्ट्रिय सभा सदस्य निर्वाचन',title: 'National Assembly Election', pic: '7.png'),
  election(nav:'',neptitle:' प्रतिनिधि सभा सदस्य निर्वाचन (पहिलो हुने निर्वाचित हुने',title: 'House of Representative Election(FPTP)', pic: '7.png'),
  election(nav:'',neptitle:'प्रदेश सभा सदस्य निर्वाचन (पहिलो हुने निर्वाचित हुने)',title: 'Provincial Assembly Election(FPTP)', pic: '8.png'),
  election(nav:'',neptitle:'स्थानीय तह निर्वाचन',title: 'Local Level Election', pic: '9.png'),
];

List<election> voterinfo =[
  election(nav:'/VI',neptitle:'मतदाता नं. खोज',title: 'Voter No. Search', pic: '10.png'),
  election(nav:'/DV',neptitle:'मतदाताको बिस्तृत विवरण',title: 'Detailed Voter Info', pic: '11.png'),
  election(nav:'/PL',neptitle:'मतदान स्थल / केन्द्र',title: 'Polling Location/Center', pic: '12.png'),
  election(nav:'/VE',neptitle:'मतदाता शिक्षा',title: 'Voter Education', pic: '13.png')
];
import 'package:flutter/material.dart';
import '../models/home_model.dart';

class result extends StatelessWidget {
  result({Key? key}) : super(key: key);
  String language="EN";
  Map data={'lang':'EN'};
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? ModalRoute.of(context)!.settings.arguments as Map<String, String>:data;
    final String  language = data['lang'];
    return Material(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: (language=="NP")? Text('िर्वाचन नतिजा',)
                :Text('Election Result'),
          ),
          body: Container(
          padding: EdgeInsets.all(12.0),
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount:resoptions.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                  mainAxisExtent: 155.0,
              ),
              itemBuilder: (BuildContext context, int index){
                final election r_opt=resoptions[index];
                return Card(
                  shadowColor: Colors.grey,
                  elevation: 2.0,
                  child: Container(
                    padding: EdgeInsets.only(top:30.0),
                    height: 80.0,
                    width: 184.0,
                    color: Colors.blueGrey[100],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: CircleAvatar(
                            radius: 28.0,
                            backgroundImage: AssetImage('assets/${r_opt.pic}',),
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 3.0,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          width: 200.0,
                          height: 38.0,
                          color: Colors.blueGrey[600],
                          child: Center(
                            child: (language=="NP")? Text(r_opt.neptitle,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white,
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                              ),)
                                :Text(r_opt.title,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white,
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                        ),],),
                  ),
                );
                },
            ),),
        ),
      );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

class page_settings extends StatefulWidget {
  @override
  _page_settingsState createState() => _page_settingsState();
}

class _page_settingsState extends State<page_settings> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> prays = [
      pray_buttons(
        pray_text: 'سبحان الله',
      ),
      pray_buttons(
        onpressed: (context) {
          setState(() {});
        },
        pray_text: 'استغفر الله الله',
      ),
      pray_buttons(
        pray_text: 'الحمد الله',
      ),
      pray_buttons(
        pray_text: 'لا اله الا الله',
      ),
      pray_buttons(
        pray_text: 'الله اكبر',
      ),
      pray_buttons(
        pray_text: " +اضافة ذكر",
      ),
    ];
    // List<widget> prayslist(){

    // }
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double gridview_height = height * 0.50;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        title: Text(
          'أذكاري',
          style: TextStyle(fontSize: 20, fontFamily: 'Cairo'),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
//pray buttons section start
              Container(
                  height: gridview_height,
                  child: GridView.count(
                    mainAxisSpacing: height * 0.01,
                    crossAxisSpacing: width * 0.02,
                    crossAxisCount: 2,
                    childAspectRatio: width / (height / (prays.length / 2)),
                    children: [...prays],
                  )),
//pray buttons section end
//contact us start

//contact us end
            ],
          )),
    );
  }
}

//buttons widget
class pray_buttons extends StatefulWidget {
  final String pray_text;
  final onpressed;
  pray_buttons({this.pray_text, this.onpressed});

  @override
  _pray_buttonsState createState() => _pray_buttonsState();
}

class _pray_buttonsState extends State<pray_buttons> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              backgroundColor: Colors.grey,
              elevation: 2,
              side: BorderSide(color: Colors.transparent)),
          child: Text('${widget.pray_text}',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Cairo',
                fontSize: 15,
              ),
              textAlign: TextAlign.center),
          onPressed: () {
            widget.onpressed;
          }),
    );
  }
}

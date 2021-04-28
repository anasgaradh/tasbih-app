import 'package:flutter/material.dart';
import 'login_page.dart';
import 'sabbih_page.dart';
import 'summary_page.dart';
import 'settings_page.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: bottomnav(),
      ),
    );
  }
}

int _currentindex = 1;
final List<Widget> _children = [
  page_summary(),
  page_sabbih(),
  page_settings(),
];

class bottomnav extends StatefulWidget {
  @override
  _bottomnavState createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent),
        home: Scaffold(
            body: _children[_currentindex],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              currentIndex: _currentindex,
              items: [
                BottomNavigationBarItem(
                    //     backgroundColor: Colors.grey[900],
                    icon: Text(
                      'تقاريري',
                      style: TextStyle(
                        color: _currentindex == 0
                            ? Colors.blueAccent
                            : Colors.white,
                        fontFamily: 'alsamt',
                        fontWeight: FontWeight.values[5],
                        fontSize: 25,
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    //   backgroundColor: Colors.grey[900],
                    icon: Text(
                      'سبح',
                      style: TextStyle(
                          color: _currentindex == 1
                              ? Colors.blueAccent
                              : Colors.white,
                          fontFamily: 'alsamt',
                          fontWeight: FontWeight.values[5],
                          fontSize: 25),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                  //  backgroundColor: Colors.grey[900],
                  icon: Icon(
                    Icons.settings,
                    color:
                        _currentindex == 2 ? Colors.blueAccent : Colors.white,
                    size: 30,
                  ),
                  label: '',
                )
              ],
              onTap: (index) {
                setState(() {
                  _currentindex = index;
                });
              },
            )));
  }
}

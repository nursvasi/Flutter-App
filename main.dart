import 'package:flutter/material.dart';
import 'SwitchTileSamplefile.dart';
import 'dropdownsamplefile.dart';

void main(){runApp(
    MaterialApp(home: BottomMenu()));}
class BottomMenu extends StatefulWidget {
  @override
  _BottomMenu createState() => _BottomMenu();
}
class _BottomMenu extends State<BottomMenu> {
  int activepage = 0;
  List<Widget>? pagecontent;
  void initState() {
    super.initState();
    pagecontent=[
      Dropdownbuttonsample(),
      SwitchTileSample(),
      PassListPage(),
      FailedListPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagecontent![activepage],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        selectedIconTheme: IconThemeData(size: 35),
        iconSize: 20,
        currentIndex: activepage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue.shade100,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label:"DropDown"),
          BottomNavigationBarItem(icon: Icon(Icons.stacked_line_chart),label:"SwitchTile"),
          BottomNavigationBarItem(icon: Icon(Icons.clear),label:"Failed"),
          BottomNavigationBarItem(icon: Icon(Icons.check),label:"Pass"),
        ],
        onTap: (int clickediconindex){
          setState(() {
            activepage=clickediconindex;
          });
        },
      ),
    );
  }
}

class FailedListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exam Fail Page"),),
      body: Center(
        child: ListView(
          children: [
            ListTile(title: Text("William Long"),subtitle: Text("longwwilliam@mail.com")),
            SizedBox(height: 20,),
            ListTile(title: Text("Sophia Martinez"),subtitle: Text("martinezsophia@mail.com")),
            SizedBox(height: 20,),
            ListTile(title: Text("Julia Liliam"),subtitle: Text("jl@mail.com")),
          ],
        ),
      ),
    );
  }
}

class PassListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exam Passers Page"),),
      body: Center(
        child: ListView(
          children: [
            ListTile(title: Text("Emma Richardson"),subtitle: Text("richemma@mail.com")),
            SizedBox(height: 20,),
            ListTile(title: Text("Olivia Perry"),subtitle: Text("perryolivia@mail.com")),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class SwitchTileSample extends StatefulWidget {

  @override
  _SwitchTileSample createState() => _SwitchTileSample();
}
class _SwitchTileSample extends State<SwitchTileSample> {
  bool switchstate=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:switchstate?Colors.white:Colors.black ,
        title:Text(switchstate?"Good Morning":"Good Evening",style:
        TextStyle(color: switchstate?Colors.black:Colors.white),),),
      body: Center(
        child: Container(
          color: Colors.lightBlue.shade100,
          height: MediaQuery.of(context).size.height/4,
          width: 250,
          child: SwitchListTile(
            secondary: Icon(Icons.add_alarm),
            value: switchstate,
            onChanged: (val){
              setState(() {
                switchstate=val;
              });
            },
            title: Text(switchstate?"Open":"Close"),
          ),
        ),
      ),
    );
  }
}


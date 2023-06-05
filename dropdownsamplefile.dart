import 'package:flutter/material.dart';
class Dropdownbuttonsample extends StatefulWidget {
  @override
  _Dropdownbuttonsample createState() => _Dropdownbuttonsample();
}

class _Dropdownbuttonsample extends State<Dropdownbuttonsample> {
  List<String> carbrands = ["Honda", "Citroen", "Renault", "BMW"];
  String? selectedBrand,brand;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Using DropDown"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Text("BRAND",style: TextStyle(fontSize: 15),),
              SizedBox(height: 15,),
              DropdownButton(
                items: carbrands.map((aval){
                  return  DropdownMenuItem(
                      child:Text(aval),value: aval);
                }).toList(),
                onChanged: (val){
                  setState(() {
                    selectedBrand=val!;
                  });
                },
                value: selectedBrand, ),
              SizedBox(height: 15,),
              ElevatedButton(
                child: Text("SHOW",style: TextStyle(fontSize: 20),),
                onPressed: (){
                  setState(() {
                    brand=selectedBrand;
                  });
                },
              ),
              SizedBox(height: 20,),
              Text("Selected car:$selectedBrand",style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';




class PlanService extends StatefulWidget {
  @override
  _PlanServiceState createState() => _PlanServiceState();
}

class _PlanServiceState extends State<PlanService> {


  String dropdownValue = '-- Service Type --';

  String dropdownValue1 = '-- Property Type --';

  void initState() {
    super.initState();

  }

  String searchAddr;

  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      //backgroundColor: Colors.redAccent[100],
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: new ListView(
          padding: EdgeInsets.all(2.0),
          addRepaintBoundaries: true,
          shrinkWrap: true,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              // color: Colors.white,
              margin: EdgeInsets.all(3.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: new Text(
                    "New Plan",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
              ),
            ),
            SizedBox(height: height/40,),
            new Card(
              elevation: 3.0,
              color: Colors.white,
             // margin: EdgeInsets.all(3.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Text(
                  "Plan",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
            ),
            SizedBox(height: height/50,),
            new Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10.0),
                child: Container(

                  child: new TextField(
                    decoration: InputDecoration(
                      hintText: 'Plan Name: Tank-50000L',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: height/80,),
            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              padding: const EdgeInsets.only(left: 20.0, right: 10.0),
              decoration: new BoxDecoration(
                  borderRadius:BorderRadius.all(Radius.circular(2.0)),
                  border: new Border.all(color: Colors.black38)
              ),

              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue,
                  onChanged: (String newValue) {
                    setState(() {

                      dropdownValue = newValue;
                    });
                  },
                  items: <String>[
                    '-- Service Type --',
                    "Residentioal",
                    "Commercial"
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: height/80,),
            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              padding: const EdgeInsets.only(left: 20.0, right: 10.0),
              decoration: new BoxDecoration(
                  borderRadius:BorderRadius.all(Radius.circular(2.0)),
                  border: new Border.all(color: Colors.black38)
              ),

              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue1,
                  onChanged: (String newValue) {
                    setState(() {

                      dropdownValue1 = newValue;
                    });
                  },
                  items: <String>[
                    '-- Property Type --',
                    "Tank", "Sump", "Sump-Tile", "Car", "Bike" ,"Floor"
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: height/80,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    "Size Range",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new Flexible(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left:10.0,right: 10.0),
                    child: new TextField(
                      decoration: InputDecoration(
                        hintText: '1',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ),
                new Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left:10.0,right: 10.0),
                    child: new Text('-'
                    ),
                  ),
                ),
                new Flexible(
                  flex:3,
                  child: Padding(
                    padding: const EdgeInsets.only(left:10.0,right: 10.0),
                    child: new TextField(
                      decoration: InputDecoration(
                        hintText: '1000',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height/40,),
            new Card(
              elevation: 3.0,
              color: Colors.white,
             // margin: EdgeInsets.all(3.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Text(
                  "Pricing",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
            ),
            SizedBox(height: height/40,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 0.2,
                  ),
                ],
              ),
              // decoration: new BoxDecoration(
              //     borderRadius:BorderRadius.all(Radius.circular(2.0)),
              //     border: new Border.all(color: Colors.red)
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new Flexible(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: new TextFormField(initialValue: "Service Year",maxLines: 2,minLines: 2,
                        textAlign: TextAlign.center,

                        enabled: false,
                        style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.w800),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                          ),

                    ),
                  ),
                  new Flexible(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left:10.0,),
                      child: new TextFormField(initialValue: "Total Services",maxLines: 2,minLines: 2,
                        textAlign: TextAlign.center,
                        enabled: false,
                        style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.w800),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: new TextFormField(initialValue: "Liter Price",maxLines: 2,minLines: 2,
                        textAlign: TextAlign.center,
                        enabled: false,
                        style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.w800),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left:10.0),

                      child: new TextFormField(initialValue: "Fixed Price",maxLines: 2,minLines: 2,
                        textAlign: TextAlign.center,
                        enabled: false,
                        style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.w800),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),

                    ),
                  ),
    new Flexible(
    flex: 2,

    child: Padding(
    padding: const EdgeInsets.only(left:10.0,right: 10.0),
    child: new TextFormField(initialValue: "Action",maxLines: 2,minLines: 2,
      textAlign: TextAlign.center,
      enabled: false,
      style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.w800),
      decoration: InputDecoration(
        border: InputBorder.none,
      ),
    ),))

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  new Flexible(
                    flex: 3,

                    child: Container(
                      height: height/20,
                      padding: EdgeInsets.all(5),
                      child: new TextFormField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 3,

                    child: Container(
                      height: height/20,
                      padding: EdgeInsets.all(5),
                      child: new TextFormField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 3,

                    child: Container(
                      height: height/20,
                      padding: EdgeInsets.all(5),
                      child: new TextFormField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 3,

                    child: Container(
                      height: height/20,
                      padding: EdgeInsets.all(5),
                      child: new TextFormField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 2,

                    child: Container(
                        height: height/20,
                      child:IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {  },)

                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  new Flexible(
                    flex: 3,

                    child: Container(
                      height: height/20,
                      padding: EdgeInsets.all(5),
                      child: new TextFormField(
                        initialValue: "2020",
                        enabled: false,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 3,

                    child: Container(
                      height: height/20,
                      padding: EdgeInsets.all(5),
                      child: new TextFormField(
                        initialValue: "1",
                        enabled: false,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 3,

                    child: Container(
                      height: height/20,
                      padding: EdgeInsets.all(5),
                      child: new TextFormField(
                        initialValue: "0.3",
                        enabled: false,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 3,

                    child: Container(
                      height: height/20,
                      padding: EdgeInsets.all(5),
                      child: new TextFormField(
                        initialValue: "299",
                        enabled: false,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 2,

                    child: Container(
                        height: height/20,
                        child:IconButton(icon: Icon(Icons.remove_circle_outline), onPressed: () {  },)

                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  new Flexible(
                    flex: 3,

                    child: Container(
                      height: height/20,
                      padding: EdgeInsets.all(5),
                      child: new TextFormField(
                        initialValue: "2020",
                        enabled: false,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 3,

                    child: Container(
                      height: height/20,
                      padding: EdgeInsets.all(5),
                      child: new TextFormField(
                        initialValue: "1",
                        enabled: false,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 3,

                    child: Container(
                      height: height/20,
                      padding: EdgeInsets.all(5),
                      child: new TextFormField(
                        initialValue: "0.3",
                        enabled: false,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 3,

                    child: Container(
                      height: height/20,
                      padding: EdgeInsets.all(5),
                      child: new TextFormField(
                        initialValue: "299",
                        enabled: false,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 2,

                    child: Container(
                        height: height/20,
                        child:IconButton(icon: Icon(Icons.remove_circle_outline), onPressed: () {  },)

                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: height/40,),
            new Card(
              elevation: 3.0,
              color: Colors.white,
              // margin: EdgeInsets.all(3.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: new Text(
                  "Plan Conditions",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
            ),
            SizedBox(height: height/40,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 0.2,
                  ),
                ],
              ),
              // decoration: new BoxDecoration(
              //     borderRadius:BorderRadius.all(Radius.circular(2.0)),
              //     border: new Border.all(color: Colors.red)
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new Flexible(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: new TextFormField(initialValue: "Plan Name",maxLines: 2,minLines: 2,
                        textAlign: TextAlign.center,
                        enabled: false,
                        style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.w800),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left:10.0),

                      child: new TextFormField(initialValue: "Total Services",maxLines: 2,minLines: 2,
                        textAlign: TextAlign.center,
                        enabled: false,
                        style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.w800),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),

                    ),
                  ),
                  new Flexible(
                      flex: 2,

                      child: Padding(
                        padding: const EdgeInsets.only(left:10.0,right: 10.0),
                        child: new TextFormField(initialValue: "Action",maxLines: 2,minLines: 2,
                          textAlign: TextAlign.center,
                          enabled: false,
                          style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.w800),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),)),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  new Flexible(
                    flex: 3,

                    child: Container(
                      height: height/20,
                      padding: EdgeInsets.all(5),
                      child: new TextFormField(
                        initialValue: "0.3",
                        enabled: false,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 3,

                    child: Container(
                      height: height/20,
                      padding: EdgeInsets.all(5),
                      child: new TextFormField(
                        initialValue: "299",
                        enabled: false,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Flexible(
                    flex: 2,

                    child: Container(
                        height: height/20,
                        child:IconButton(icon: Icon(Icons.remove_circle_outline), onPressed: () {  },)

                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: height/50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: FlatButton(onPressed: () {  },child: Text("Save",style: TextStyle(color: Colors.white),),)),
                Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: FlatButton(onPressed: () {  },child: Text("Cancel",style: TextStyle(color: Colors.white),),)),
            ],)
          ],
        ),
      ),

      appBar:AppBar(
        title: Text('Smart Tank Care'),
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(
        //       Icons.edit,
        //       color: Colors.white,
        //     ),
        //
        //     onPressed: () {
        //       // Navigator.push(
        //       //     context,
        //       //     MaterialPageRoute(
        //       //       builder: (BuildContext context) => ServiceDetailEdit(),
        //       //     ));
        //     },
        //   ), IconButton(
        //     icon: Icon(
        //       Icons.home,
        //       color: Colors.white,
        //     ),
        //
        //     onPressed: () {
        //       // Navigator.push(
        //       //     context,
        //       //     MaterialPageRoute(
        //       //       builder: (BuildContext context) => Home(),
        //       //     ));
        //     },
        //  )

      //  ],
      ),
    );
  }


}



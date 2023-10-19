import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/item_data.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(

      create: (context) => ItemData() ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.green
        ),
        home: Home(
        ),
      ),

    );
  }

}

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final itemData = Provider.of<ItemData>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('My Cart'),
        ),
        body: Center(
          child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 150)),
                TextFormField(
                    decoration: InputDecoration(
                      hintText: "Item Name",
                      border: OutlineInputBorder(),
                    )
                ),
                ElevatedButton(
                  child: Text("SUBMIT"),
                  onPressed: () {
                    Navigator.pop(context);
                  },),
                Container(
                    child:
                    Card(child: Row(
                      children: [
                        SizedBox(
                          width: 400,
                          height: 100,
                          child: Center(
                              child: Text("Items List")

                          ),
                        )
                      ],
                    )
                    )

                ),
              ]
          ),
        )
    );
  }
}
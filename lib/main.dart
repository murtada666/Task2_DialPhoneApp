import 'package:dial/numbers/dial_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'numbers/dial_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
   const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 0,
      ),
      backgroundColor: Colors.white,

      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text("", style: TextStyle(
            color: Colors.black.withOpacity(0.7),
            fontSize: 34,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(
            height: 30,
          ),
          Text("+ Add to contacts", style: TextStyle(
            color: Colors.green,
            fontSize: 18,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: (){
              setState(() {});
            },
            child: SizedBox(
                height: 450,
                width: 350,
                child: Dial()),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.person),
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Icon(Icons.call, color: Colors.white,),
              ),
              Icon(Icons.remove_circle_outline),
            ],
          )
        ],
      ),

    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(title:const Text("Dicee"), 
         backgroundColor: Colors.pink,),
        body:  DiceApp(),
      ),
     
    );
  }
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftImageNumber = 2;
  int rigthImageNumber = 1;


  void randomImage(){ 
    setState(() {
      leftImageNumber = Random().nextInt(6) + 1;
      rigthImageNumber = Random().nextInt(6) + 1;
    });
  }


   @override
   Widget build(BuildContext context){
    return Center(
      child: Row(
      children: [
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
            onPressed:randomImage,
            child: Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset("./images/dice$leftImageNumber.png"),
          ),
          ),
          )
      ,
        Expanded(
          child:TextButton(
            style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
            onPressed:randomImage,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset("./images/dice$rigthImageNumber.png"),
            ),
          ) 
          )
        ],
    ),
    );  
   }
}
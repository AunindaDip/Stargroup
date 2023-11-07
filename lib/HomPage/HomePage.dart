import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow:const [
              BoxShadow(
                color: Color(0x29000000), // Color with the specified opacity
                offset: Offset(5.0, 5.0), //(x,y)
                blurRadius: 8.0,
              ),
            ],
          ),
          height: .80, // Change this to the desired height
          // Customize the container as needed
        ),


        title: Text(widget.title),
      ),
      body: Container(
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage('lib/Assets/BkgroungImage.svg'), // Replace with your image asset
    fit: BoxFit.cover, // You can adjust this property as needed
    ),

    )
      )
    );
  }
}

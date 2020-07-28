import 'package:flutter/material.dart';

myApp() {
  photo() {
    print("photo dekh");
  }

  var myBody = Container(
    height: double.infinity,
    width: double.infinity,
    margin: EdgeInsets.all(5),
    color: Colors.black87,
    alignment: Alignment.center,
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(60),
            height: 300,
            width: 350,
            //color: Colors.grey.shade300,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Akash Das",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.email),
                    Text("  abc@gmail.com"),
                  ],
                ),
              ],
            )),
        Container(
          alignment: Alignment.center,
          height: 120,
          width: 120,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade300,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(60),
            image: DecorationImage(
              image: NetworkImage(
                  'https://raw.githubusercontent.com/ad-felix/flutter-dev/286374b3bffa5972ff43196e505834244973262c/Akash-chaos.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
  );

  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Noblesse'),
        backgroundColor: Colors.black87,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.android),
            onPressed: photo,
          ),
        ],
      ),
      body: myBody,
    ),
    debugShowCheckedModeBanner: false,
  );
}

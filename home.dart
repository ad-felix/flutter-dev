import 'package:flutter/material.dart';

myApp() {
  var myText = Text(
    "Akash-Vaani",
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );

  help() {
    print("Someone needs help!!!!");
  }

  search() {
    print("Search in the app!!!!");
  }

  var url =
      "https://raw.githubusercontent.com/ad-felix/flutter-dev/286374b3bffa5972ff43196e505834244973262c/Akash-chaos.jpeg";

  var img1 = Image.network(
    url,
    width: double.infinity,
    height: double.infinity,
  );

  var myIcon = Icon(Icons.offline_bolt); //For leading
  var searchIcon = Icon(Icons.search);
  var helpIcon = Icon(Icons.help);

  var searchButton = IconButton(
    icon: searchIcon,
    onPressed: search,
  );

  var helpButton = IconButton(
    icon: helpIcon,
    onPressed: help,
  );

  var myAppBar = AppBar(
    title: myText,
    backgroundColor: Colors.lightBlueAccent,
    leading: myIcon,
    actions: <Widget>[
      searchButton,
      helpButton,
    ],
  );

  var myHome = Scaffold(
    appBar: myAppBar,
    body: img1,
  );

  var design = MaterialApp(
    home: myHome,
    debugShowCheckedModeBanner: false,
  );

  return design;
}

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[200], // background color to appbar
        elevation: 25, // show the shadow of appbar
        shadowColor: Colors.deepOrange[200], // color to the shadow of appbar
        toolbarHeight: 80, // height of the appbar
        toolbarOpacity: 0.7, // it mades the faded and always between 0 to 1
        // leading: Icon( // leading and drawer cannot be written together in appbar because leading always show at the left side of the appbar
        //   Icons.person,
        //   color: Colors.amberAccent[100],
        //   size: 40,
        // ),
        leadingWidth: 100, // width of the leading icon
        title: Text(
          // text to the appbar
          "Appbar",
          style: TextStyle(
            color: Colors.amberAccent[100],
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true, // alignment of the title in the appbar
        actions: [
          // Typically these widgets are [IconButton]s representing common operations.
          Icon(
            Icons.more_vert,
            color: Colors.amberAccent[100],
          ),
          IconTheme(
              data: IconThemeData(
                color: Colors.deepOrange[100],
              ),
              child: Text(''))
        ],
      ),
      drawer: Drawer(),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Click Me'),
          style: ElevatedButton.styleFrom(
            primary: Colors.amberAccent[100],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

Future<void> main() async => runApp(MyApp());

// Use this for hot reload to work
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,

        // -------------------------- START of where we will be working at --------------------------
        body: SafeArea(
          // Vertically- Stacked
          child: Column(
            // Centers all our content in the middle of the screen
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/hulk.jpeg'),
              ),
              // Name will appear vertically under image
              Text(
                'Jay-Martinez',
                style: TextStyle(
                    fontFamily: 'Nosifer',
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'IOS/Flutter-Developer',
                style: TextStyle(
                  fontFamily: 'Iceland',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              
              // Adds a horizontal line in between widgets
              SizedBox(
                height: 20,
                width: 160,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              
              // Horizontally-Stacked
              Card(
                  color: Colors.grey[900],
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    title: Text(
                      '1-(890)-456-7655',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Iceland',
                          fontWeight: FontWeight.bold),
                    ),
                  )),

              // Spacer from the widget above
              Container(),

              Card(
                  color: Colors.grey[900],
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text(
                      'elDiabloCoño@hotmail.com',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'Iceland',
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
    // ------------------------------ END of where we will be working at ----------------------------
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp()); // initiate MyApp as  StatelessWidget

// Main class
class MyApp extends StatelessWidget {
  // creating main screen and building list of wordpairs
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.light(),
      theme: ThemeData(brightness: Brightness.light),
      title: 'About',
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> aboutBoxChildren = <Widget>[
      SizedBox(
        height: 20,
      ),
      Text('for support or complaint write support@gmail.com'),
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                style: TextStyle(color: Color(0xff226EBE)),
                text: 'supports@gmail.com'),
          ],
        ),
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      
      body: Center(
        child: RaisedButton(
          child: Text('About'),
          color: Color(0xff226EBE),
          textColor: Colors.black,
          onPressed: () {
            showAboutDialog(
              context: context,
              applicationIcon: Icon(
                Icons.local_play,
                size: 65,
                color: Theme.of(context).accentColor,
              ),
              applicationName: 'Reepcy',
              applicationVersion: 'Version 1.0.0',
              applicationLegalese: '© 2020 HNGi7',
              children: aboutBoxChildren,
            );
          },
        ),
      ),
    );
  }
}

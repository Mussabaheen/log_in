import 'package:flutter/material.dart';

void main()
{
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new loginpage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue,


      ),
    );
  }
}

class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> with SingleTickerProviderStateMixin {

    AnimationController _iconanimationcontroller; //adding animations
    Animation<double> iconanimation;


    @override
    void initState() {
          super.initState();


    }

    @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.greenAccent,
      body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Image(
                image: new AssetImage("assets/mobileUI.png"),
              fit: BoxFit.cover,
              color: Colors.black87,
              colorBlendMode: BlendMode.darken,
              //color: ,
            ),
            new Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new FlutterLogo(
                    size: 130,


                  )
                ],

            )
          ],
      ),
    );
  }
}

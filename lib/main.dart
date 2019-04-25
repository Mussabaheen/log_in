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


    @override  //implementing animations here
    void initState() {
          super.initState();
          _iconanimationcontroller=new AnimationController(
            vsync: this,
            duration:new Duration(
              microseconds: 300
            )

          );
          iconanimation=new CurvedAnimation(parent: _iconanimationcontroller, curve: Curves.bounceInOut);

          iconanimation.addListener(()=>this.setState((){}));
          _iconanimationcontroller.forward();
          

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
                    size: _iconanimationcontroller.value*100,


                  ),
                  new Form(
                      child:new Theme(
                        data: new ThemeData(
                            brightness:Brightness.dark,
                            primarySwatch: Colors.teal,
                            inputDecorationTheme:new InputDecorationTheme(labelStyle: new TextStyle(color: Colors.teal,fontSize: 20))
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(40.0),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: <Widget>[
                              new TextFormField(
                                decoration: new InputDecoration(
                                    labelText: "Enter Email",


                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              new TextFormField(
                                decoration: new InputDecoration(
                                  labelText: "Enter Password",

                                ),
                                keyboardType: TextInputType.emailAddress,
                                obscureText: true,
                              ),
                              new Padding(padding: const EdgeInsets.all(20.0)),
                              new RaisedButton(
                                textColor: Colors.white,
                                color: Colors.teal,
                                child: new Text("Log in"
                                ),
                                onPressed: ()=>{},

                              )
                            ],
                          ),
                        ),
                      )
                  )
                ],

            ),



          ],
      ),
    );
  }
}

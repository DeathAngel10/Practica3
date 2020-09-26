
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Practica 3",
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('imagen/img1.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('imagen/logo.jpg', width: 300,),
                ],
              ),
              SizedBox(height: 50),
              Container(
                child: Padding(

                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: TextField(style: TextStyle(color: Colors.white,fontSize: 25),
                    autofocus: false,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.person,
                        size: 50,
                        color: Colors.white,
                      ),
                      contentPadding: EdgeInsets.all(10),
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 30
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 8
                        )
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),

              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                  child: TextField(style: TextStyle(color: Colors.white,fontSize: 25),
                    autofocus: false,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.security,size: 50,color: Colors.white,),
                      contentPadding: EdgeInsets.all(10),
                      hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 30
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white,
                              width: 8
                          )
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
              Container(
                padding: EdgeInsets.all(20),
                child: RaisedButton(
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                  onPressed: (){},
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Forgot password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Term & Conditions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
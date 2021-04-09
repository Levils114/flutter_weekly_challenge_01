import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left, size: 32),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        centerTitle: true,
        title: Text('SIGN UP',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.purple, Colors.pink])),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 48, right: 48, top: 100),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Colors.pink),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink))),
              ),
              SizedBox(
                height: 32,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.pink),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink))),
              ),
              SizedBox(
                height: 32,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.pink),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink))),
              ),
              SizedBox(
                height: 96,
              ),
              Container(
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.purple, Colors.pink])),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('CREATE ACCOUNT',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 20)),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 15)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)))),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Or use your social media account',
                style: TextStyle(color: Colors.pink, fontSize: 15),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 45,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: SvgPicture.asset('assets/google.svg'),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)))),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Container(
                    width: 45,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: SvgPicture.asset('assets/twitter.svg'),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent)),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Container(
                    width: 45,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: SvgPicture.asset('assets/facebook.svg'),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shadowColor:
                              MaterialStateProperty.all(Colors.transparent)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}

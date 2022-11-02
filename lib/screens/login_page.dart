import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Column(
        children: [
          AppBar(
            backgroundColor: Colors.black12,
            elevation: 0.0,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Text(
                  "Let's sign you in.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0),
                child: TextField(
                  style: TextStyle(color: Colors.grey.shade500),
                  maxLength: 45,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade600, width: 3.0),
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    filled: true,
                    fillColor: Colors.white10,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade600, width: 3.0),
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey.shade500,
                        height: 1.6),
                    contentPadding: EdgeInsets.only(
                        left: 28.0, right: 28.0, top: 23.0, bottom: 23.0),
                  ),
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.only(top: 7.0, right: 20.0, left: 20.0),
                child: TextField(
                  style: TextStyle(color: Colors.grey.shade500),
                  maxLength: 45,
                  obscureText: hidePassword,
                  obscuringCharacter: '●',
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade600, width: 3.0),
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    filled: true,
                    fillColor: Colors.white10,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade600, width: 3.0),
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(32.0)),
                    hintText: 'Password',
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: GestureDetector(onTap: () {
                        setState(() {
                          hidePassword = true ? hidePassword == false : hidePassword == true;
                        });
                      }, //hacer visible la contra,
                        child: Icon(Icons.remove_red_eye, color: Colors.grey.shade600,)),
                    ),
                    hintStyle: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey.shade500,
                        height: 1.6),
                    contentPadding: EdgeInsets.only(
                        left: 28.0, right: 28.0, top: 23.0, bottom: 23.0),
                  ),
                ),
              ),
            ],
          ),

          //Expanded(child: SizedBox()),
          SizedBox(height: 30.0,),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.white,
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: Size(1000, 70),
                ),
                onPressed: () {},
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}

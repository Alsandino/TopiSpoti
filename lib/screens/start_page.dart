import 'package:flutter/material.dart';
import 'login_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({
    super.key,
  });

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Display the picture with circular borders and some padding
              Padding(
                padding: const EdgeInsets.only(
                  top: 100,
                  left: 20,
                  right: 20,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    image: AssetImage('resources/enjoyer.jpg'),
                  ),
                ),
              ),

              //Display the text
              Padding(
                padding: const EdgeInsets.only(
                  top: 60.0,
                ),
                child: Text(
                  'Get you most played\nSpotify songs',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              SizedBox(
                height: 20.0,
              ),

              Text(
                "Sign In with your Spotify account\nto receive your account's data.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              )
            ],
          ),

          Expanded(child: SizedBox()),
          //animated sign in button
          Hero(
            tag: 'signIn',
            child: Center(
                child: Padding(
              padding: const EdgeInsets.only(
                  bottom: 18.0, right: 25.0, left: 25.0),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginPage()),
                  );
                },
                child: Text(
                  'Sign In With Spotify',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            )),
          )
        ],
      ),
    );
  }
}

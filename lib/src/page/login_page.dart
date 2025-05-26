import 'package:autilearner_flutter_app/src/page/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Text(
                  'AutiLearner',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1f3a8a),
                  ),
                ),
              ),

              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/splash_animation_image.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 220,
                  child: Text(
                    'The new, fun platform for your special needs child!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SizedBox(
                  width: 300,
                  height: 60,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff005cb2),
                    ),
                    child: Text(
                      'Let\'s Begin',
                      style: TextStyle(color: Colors.white, fontSize: Theme.of(context).appBarTheme.titleTextStyle!.fontSize),
                    ),
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

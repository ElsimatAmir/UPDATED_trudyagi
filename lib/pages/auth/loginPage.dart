import 'package:auto_route/auto_route.dart';
import "package:flutter/material.dart";
import '../../components/authTextField.dart';
import '../../constants/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      backgroundColor: mainDarkColor,
      body: _LoginHome(),
    );
  }
}

class _LoginHome extends StatelessWidget {
  const _LoginHome();

  @override
  Widget build(BuildContext context) {
  

  return SafeArea(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // first countainer is the app bar with org name
        Container(
            height: 100,
            decoration: const BoxDecoration(
              color: mainOrangeColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100.0)),
            ),
            alignment: Alignment.center,
            child: const Text(
              "ИМЯ.РФ",
              style: TextStyle(
                color: mainTextColor,
                fontSize: 25,
              ),
            ),
          ),

        // the body of the app
        Expanded(
          child: SingleChildScrollView( 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // logo of the lock at the begining
                const Padding(
                  padding: EdgeInsets.only(top: defaultPaddingSpace, bottom: defaultPaddingSpace),
                    child: Icon(
                      Icons.lock,
                      size: 50,
                      color: mainTextColor,
                    ),
                ),
        
                // the text to be for login page as wellocme
                const Padding(
                  padding: EdgeInsets.only(bottom: defaultPaddingSpace),
                  child: Text(
                    "hello again and some text as wellocme to the app stuff",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: mainOrangeColor,
                      fontSize: 16,
                    ),
                  )
                ),
        
                // get user Email made by Components/AuthTextField
                const AuthTextField(
                  hintTextValue: "Email",
                  obscurveText: false,
                  iconName: Icon(Icons.person),
                  borderColor: mainDarkColor,
                  focusBorderColor: mainOrangeColor,
                ),
        
                // make a space between the inputs
                const SizedBox(height: 30.0),
        
                // get user Password made by Components/AuthTextField
                const AuthTextField(
                  hintTextValue: "Password",
                  obscurveText: true,
                  iconName: Icon(Icons.lock),
                  borderColor: mainDarkColor,
                  focusBorderColor: mainOrangeColor,
                ),
        
                // clickable forget password to re send the password
                GestureDetector(
                  onTap: () => {
                    context.router.pushNamed("/loading"),
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Padding( padding:EdgeInsets.only(right: 30.0, top: 15.0, bottom: 50.0),
                        child: Text(
                          "Forget password?",
                          style: TextStyle(
                            color: mainTextColor,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
                
            // adding the buttons to login & sign in and to login as admin
            //LOGIN BUTTON:
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPaddingSpace),
            child: GestureDetector(
              onTap: () => {
                context.router.pushNamed("/userMainScreen"),
              },
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: mainOrangeColor,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: mainDarkColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          //SPACE bettween the buttons LOGIN AND SIGNIN (REGISTRATION):
          const SizedBox(height: defaultPaddingSpace),
        
          //SIGNIN BUTTON:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPaddingSpace),
            child: GestureDetector(
              onTap:() => {
                    context.router.pushNamed("/Signin"),
              },
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: mainDarkColor,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "Registraion",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: mainOrangeColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        
          //SPACE bettween the registration and admin login button
          const SizedBox(height: defaultPaddingSpace),
        
          //SIGNIN &  REGISTRATION BUTTON
          GestureDetector(
            onTap:() => {
        
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPaddingSpace),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "iam Admin",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: mainTextColor,
                    )
                  ),
                  Icon(
                    Icons.account_circle_rounded,
                    size: 20.0,
                    color: mainOrangeColor,
                  ),
                ]),
              ),
            ),
        
              ],
            )
            ),
        ),
        
        
        ]
        ),
    );
  }
}

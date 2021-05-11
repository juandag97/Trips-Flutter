import 'package:flutter/material.dart';
import 'package:tripsfl/User/repository/firebase_auth_api.dart';
import '../../../widgets/gradient_back.dart';
import '../../../widgets/button_green.dart';
// import 'package:flutter/flutter_auth_buttons.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import '../../bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return signInGoogleUI();
  }

  Widget signInGoogleUI() {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          GradientBack("", double.infinity),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Welcome \n This is your Travel App",
                style: TextStyle(
                  fontSize: 37.0,
                  fontFamily: "Lato",
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
              ButtonGreen(text: "Login with Gmail", 
              onPressed: (){
                userBloc.signIn().then((FirebaseUser user) => print("El usuario es ${user.displayName}"));
              },
              width: 300.0,
              height: 50.0,
              ),
              GoogleSignInButton(
                onPressed: (){

                },
                borderRadius: 10,

              ),
              FacebookSignInButton(
                onPressed: (){

                },
                borderRadius: 10,
                

              )
            ],
          )
        ],
      ),
    );
  }
}
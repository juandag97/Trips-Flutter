import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import '../repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc {

  final _auth_repository = AuthRepository();

  // Casos de Uso
  // 1. SignIn a la app con Google

  Future<FirebaseUser> signIn(){
    return _auth_repository.signInFirebase();
  }

  @override
  void dispose(){
    
  }
}
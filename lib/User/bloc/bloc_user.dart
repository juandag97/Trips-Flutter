import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import '../repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc {

  final _auth_repository = AuthRepository();

  // Flujo de datos - Streams
  // Stream - Firebase
  // StreamController
  // Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;
  // Casos de Uso
  // 1. SignIn a la app con Google

  Future<FirebaseUser> signIn(){
    return _auth_repository.signInFirebase();
  }

  signOut() {
    _auth_repository.signOut();
  }

  @override
  void dispose(){
    
  }
}
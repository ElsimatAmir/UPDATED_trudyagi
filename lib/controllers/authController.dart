import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthController {
  Future<String> loginIn(String email, String password);
  Future<String> createUser(String email, String password, String name, String phoneNumber);
  Future getCurrentUser();
  Future<void> signOut();
}

class AuthController implements IAuthController{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future getCurrentUser() async {
    try{
        User? firebaseUser = await _firebaseAuth.currentUser;
        return firebaseUser ;
    }catch(e){
     return e;
    }
  }

  @override
  Future<String> loginIn(String email, String password) async{
    try{
      User firebaseUser = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password) as User;
      return firebaseUser.uid; 
    }catch(e){
      return "can't Login Check enternet connection";
    }
  }

  @override
  Future<String> createUser(String name, String password, String email, String phoneNumber) async {
    try{
      User firebaseUser = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password) as User;
       return firebaseUser.uid; 
    }catch(e){
      return "can't create a new client Check enternet connection";
    }
  }

  @override
  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }
}
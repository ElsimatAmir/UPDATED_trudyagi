import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:testapp/controllers/databaseController.dart';

abstract class IAuthController {
  Future<String> loginIn(
    dynamic context,
    String email, 
    String password
    );
  Future<String> createUser({
    required String userName,
    required String phoneNumber, 
    required String userPassword, 
    required String userEmail,
  });
  Future getCurrentUser();
  Future<void> signOut();
}

class AuthController implements IAuthController{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final DatabaseController db = DatabaseController();
  
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
  Future<String> loginIn(context, String email, String password) async{
    try{
      User firebaseUser = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password) as User;
      context.router.pushNamed("/userMainScreen");
      return firebaseUser.uid; 
    }catch(e){
      return "can't Login Check enternet connection";
    }
  }

  @override
  Future<String> createUser({
    required String userName,
    required String phoneNumber, 
    required String userPassword, 
    required String userEmail,
  }) async {
    print('the user INputDATA: \n name = $userName \n phone = $phoneNumber \n password = $userPassword \n ');
    if(userName ==''|| userEmail =='' || userPassword =='' || phoneNumber ==''){
      return '';
    }else {
      try{
        User firebaseUser = await _firebaseAuth.createUserWithEmailAndPassword(email: userEmail, password: userPassword) as User;
        print(firebaseUser);
        /*await db.addUserToDataBase(
          userName: userName, 
          phoneNumber: phoneNumber, 
          userEmail: userEmail, 
          userID: firebaseUser.uid.toString(),
          );*/
        return firebaseUser.uid; 
      }catch(e){
        return "can't create a new client Check enternet connection";
      }
    }
    
  }

  @override
  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }
}
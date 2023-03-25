import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:testapp/controllers/databaseController.dart';
import 'package:testapp/models/client.dart';

abstract class IAuthController {
  Future<String> loginIn(dynamic context, String email, String password);
  Future<String> createUser({required Client newClient});
  Future getCurrentUser();
  Future<void> signOut();
}

class AuthController implements IAuthController {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final DatabaseController db = DatabaseController();

  @override
  Future getCurrentUser() async {
    try {
      User? firebaseUser = _firebaseAuth.currentUser;
      return firebaseUser;
    } catch (e) {
      return e;
    }
  }

  @override
  Future<String> loginIn(context, String email, String password) async {
    try {
      UserCredential firebaseUser = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      //TODO: fix the route!!!
      context.router.pushNamed("/userMainScreen");
      return firebaseUser.user!.uid;
    } catch (e) {
      return "ERROR:$e";
    }
  }

  @override
  Future<String> createUser({required Client newClient}) async {
    if (newClient.clientName == '' ||
        newClient.clientEmail == '' ||
        newClient.clientPassword == '' ||
        newClient.clientPhoneNumber == '') {
      return 'inputs Empty';
    } else {
      // create a auth by email/password To login
      try {
        User firebaseUser = await _firebaseAuth.createUserWithEmailAndPassword(
            email: newClient.clientEmail,
            password: newClient.clientPassword) as User;
        //setting the id to the user from the givin id fromfirebase
        newClient.clientID = firebaseUser.uid;
        await db.addUserToDataBase(newClient: newClient);
        // here before return should show that secces and go to main page as user allready
        return firebaseUser.uid;
      } catch (e) {
        return "can't create a new client Check enternet connection";
      }
    }
  }

  @override
  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }
}

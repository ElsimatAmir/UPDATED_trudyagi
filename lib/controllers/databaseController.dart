// here is the database conntroller to login users from database 

/*
      await _usersDataBase.add({{"name":name, "phone": phone}});
      await _usersDataBase.update({"name":name, "phone": phone});
      await _usersDataBase.doc(productId).delete;
  */ 

import 'package:testapp/controllers/authController.dart';

class DatabaseController{ 

 addUserToDataBase({
  required String userName,
  required String phoneNumber, 
  required String userPassword, 
  required String userEmail,
  }) async {
    final AuthController auth = AuthController();
    //check if data courrect or not empty

    //try to creaty user 
    Future<String> result =  auth.createUser(userEmail, userPassword, phoneNumber, userEmail);

    
    //if user created add to database with document name = uid that get back from secsess createUser by password and email
 
 
 }
}
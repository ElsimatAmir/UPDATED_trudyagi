// here is the database conntroller to login users from database 

/*
      await _usersDataBase.add({{"name":name, "phone": phone}});
      await _usersDataBase.update({"name":name, "phone": phone});
      await _usersDataBase.doc(productId).delete;
  */ 

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseController{ 
final CollectionReference _usersDataBase = FirebaseFirestore.instance.collection('users');
 
 addUserToDataBase({
  required String userName,
  required String phoneNumber, 
  required String userEmail,
  required String userID,
  }) async {
    print("\n creating user with name=$userName \n num = $phoneNumber\n email = $userEmail \n uid user = $userID \n");
   //adding to database with document where id is uid
   try{
    await _usersDataBase.doc(userID).set({{
      "userName": userName, 
      "userPhoneNumber": phoneNumber, 
      "userEmail": userEmail
      }});
   }catch(e){
    return;
   }
 
 }
}
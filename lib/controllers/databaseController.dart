// here is the database conntroller to login users from database

/*
      await _usersDataBase.add({{"name":name, "phone": phone}});
      await _usersDataBase.update({"name":name, "phone": phone});
      await _usersDataBase.doc(productId).delete;
  */

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/client.dart';

abstract class IDatabaseController {
  Future addUserToDataBase({required Client newClient});
}

class DatabaseController implements IDatabaseController {
  final _db = FirebaseFirestore.instance;

  @override
  Future addUserToDataBase({required Client newClient}) async {
    _db
        .collection('Clients')
        .add(newClient.toJson())
        .whenComplete(() => const SnackBar(content: Text('success')));
  }
}

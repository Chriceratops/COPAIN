// import 'package:flutter/material.dart';

// class User extends ChangeNotifier {
//   String _name = "";
//   String _copainID = "";
//   List<User> _relations = [];

//   User({required String name, required String copainID, required List<User> relations}) {
//     this._name = name;
//     this._copainID = copainID;
//     this._relations = relations.toList();
//   }

//   String get name => _name; 
//   void setName(String name) { _name = name; notifyListeners(); }

//   String get copainID => _copainID; 
//   void setCopainID(String id) { _copainID = id; notifyListeners(); }

//   List<User> get relations => _relations.toList();
//   void addUser(User u) {_relations.add(u); notifyListeners();}
//   void removeAll()     {_relations.clear(); notifyListeners();}

// }  

import 'package:hive/hive.dart';
import 'package:copain_copanion_app/models/copain/copain.dart';

part 'user.g.dart';

@HiveType(typeId: 1)
class User {
  User({
    required this.name,
    required this.copain,
    required this.relations,
  });

  @HiveField(0)
  String name;

  @HiveField(1)
  Copain copain;

  @HiveField(2)
  List<User> relations;
  
}

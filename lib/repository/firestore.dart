import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreRepository {
  Stream<List> watchTimeTable(String classs){
    return FirebaseFirestore.instance.collection(classs).snapshots().map((event) => event.docs);
  }

  Stream<Map> watchLinks(String classs){
    return FirebaseFirestore.instance.collection('${classs}_links').snapshots().map((event) {
      return event.docs.first.data();
    });
  }

}
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreRepository {
  Stream<List> watchTimeTable(){
    print("jjjgfbfb");
    return FirebaseFirestore.instance.collection("csea").snapshots().map((event) => event.docs);
  }

  Stream<Map> watchLinks(){
    return FirebaseFirestore.instance.collection('csea_links').snapshots().map((event) {
      return event.docs.first.data();
    });
  }

}
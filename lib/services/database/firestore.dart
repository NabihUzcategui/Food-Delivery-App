import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  //get collection of order
  final CollectionReference orders =
      FirebaseFirestore.instance.collection('orders');

  //save oredr to bd
  Future<void> saveOrdertoDataBase(String receipt) async {
    await orders.add({
      'date': DateTime.now(),
      'order': receipt,

      //add more fields as needed
    });
  }
}

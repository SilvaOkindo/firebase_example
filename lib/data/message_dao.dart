import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_example/data/messagemodel.dart';

class MessageDao {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('message');

  void saveMessage(Message message) {
    collection.add(message.toJson());
  }

  // get message
  Stream<QuerySnapshot> getMessageStream() {
    return collection.snapshots();
  }
}

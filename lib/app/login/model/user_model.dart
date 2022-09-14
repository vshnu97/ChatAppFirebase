import 'dart:developer';

import 'package:chat_app/app/allconstants/firestore_constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserChat {
  String id;
  String photoUrl;
  String nickname;
  String aboutMe;
  String phoneNumber;

  UserChat({
    required this.id,
    required this.aboutMe,
    required this.nickname,
    required this.phoneNumber,
    required this.photoUrl,
  });
  Map<String, String> toJson() {
    return {
      FirestoreConstants.nickname: nickname,
      FirestoreConstants.aboutMe: aboutMe,
      FirestoreConstants.photoUrl: photoUrl,
      FirestoreConstants.phoneNumber: phoneNumber,
    };
  }

  factory UserChat.fromDocument(DocumentSnapshot doc) {
    String aboutMe = '';
    String photoURL = '';
    String nickname = '';
    String phoneNumber = '';
    try {
      aboutMe = doc.get(FirestoreConstants.aboutMe);
    } catch (e) {
      log(e.toString());
    }
    try {
      nickname = doc.get(FirestoreConstants.photoUrl);
    } catch (e) {
      log(e.toString());
    }
    try {
      nickname = doc.get(FirestoreConstants.nickname);
    } catch (e) {
      log(e.toString());
    }
    try {
      phoneNumber = doc.get(FirestoreConstants.phoneNumber);
    } catch (e) {
      log(e.toString());
    }
    return UserChat(
        id: doc.id,
        aboutMe: aboutMe,
        nickname: nickname,
        phoneNumber: phoneNumber,
        photoUrl: photoURL);
  }
}

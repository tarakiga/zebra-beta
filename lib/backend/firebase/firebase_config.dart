import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA0m20c-aRWfzXc9ihZLTEukuWxZaTzvnw",
            authDomain: "zebra-crop-bank-beta-j13wod.firebaseapp.com",
            projectId: "zebra-crop-bank-beta-j13wod",
            storageBucket: "zebra-crop-bank-beta-j13wod.appspot.com",
            messagingSenderId: "1009460205138",
            appId: "1:1009460205138:web:85b274b02f410c18dff18b"));
  } else {
    await Firebase.initializeApp();
  }
}

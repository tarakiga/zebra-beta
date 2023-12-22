import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA00qvuQ_02ZpGHAbMPkFz4pDXCuxg4SG0",
            authDomain: "zebracrop-80af9.firebaseapp.com",
            projectId: "zebracrop-80af9",
            storageBucket: "zebracrop-80af9.appspot.com",
            messagingSenderId: "882019561880",
            appId: "1:882019561880:web:71877e9e69f1a0d4db7bed",
            measurementId: "G-9YBNT97S53"));
  } else {
    await Firebase.initializeApp();
  }
}

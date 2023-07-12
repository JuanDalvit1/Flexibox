import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBKJVYa9-pi9EqAZHucMPbq0bdEFUA1Sgg",
            authDomain: "fluttterflexi.firebaseapp.com",
            projectId: "fluttterflexi",
            storageBucket: "fluttterflexi.appspot.com",
            messagingSenderId: "152917128691",
            appId: "1:152917128691:web:203878c0f098610a148e86",
            measurementId: "G-J5WRQRSVSM"));
  } else {
    await Firebase.initializeApp();
  }
}

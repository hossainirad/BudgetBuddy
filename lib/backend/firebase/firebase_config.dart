import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA440a2LGzV7ks7hiS01orwZ20OyX_N63w",
            authDomain: "budget-buddy-3tisn9.firebaseapp.com",
            projectId: "budget-buddy-3tisn9",
            storageBucket: "budget-buddy-3tisn9.appspot.com",
            messagingSenderId: "762340046010",
            appId: "1:762340046010:web:3e7944dab8a130a1557e83"));
  } else {
    await Firebase.initializeApp();
  }
}

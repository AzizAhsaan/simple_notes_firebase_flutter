// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCFbwJeQRURR0YFFuPuLzrQjQSMO3Fimk8',
    appId: '1:524445372092:web:3c6a0d5dd354c27dd34ab9',
    messagingSenderId: '524445372092',
    projectId: 'crud-1c6c1',
    authDomain: 'crud-1c6c1.firebaseapp.com',
    storageBucket: 'crud-1c6c1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCqhD9flV5BYYrHxvM5sxe3y3kVv0KCA00',
    appId: '1:524445372092:android:b9a2bf89a067e645d34ab9',
    messagingSenderId: '524445372092',
    projectId: 'crud-1c6c1',
    storageBucket: 'crud-1c6c1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBbLeoStbQUSFafiopHoh-8cEvvBwILzIA',
    appId: '1:524445372092:ios:b9ad6bbc1bff1ecbd34ab9',
    messagingSenderId: '524445372092',
    projectId: 'crud-1c6c1',
    storageBucket: 'crud-1c6c1.appspot.com',
    iosBundleId: 'com.example.simpleCrudFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBbLeoStbQUSFafiopHoh-8cEvvBwILzIA',
    appId: '1:524445372092:ios:b9ad6bbc1bff1ecbd34ab9',
    messagingSenderId: '524445372092',
    projectId: 'crud-1c6c1',
    storageBucket: 'crud-1c6c1.appspot.com',
    iosBundleId: 'com.example.simpleCrudFirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCFbwJeQRURR0YFFuPuLzrQjQSMO3Fimk8',
    appId: '1:524445372092:web:d89b95da9aa7cf9ed34ab9',
    messagingSenderId: '524445372092',
    projectId: 'crud-1c6c1',
    authDomain: 'crud-1c6c1.firebaseapp.com',
    storageBucket: 'crud-1c6c1.appspot.com',
  );
}

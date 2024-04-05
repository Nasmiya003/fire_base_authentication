// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBM7UXqHEtK38NKutaqIvhDj646-cBemy4',
    appId: '1:199324793094:web:7a75f097a239fe11328687',
    messagingSenderId: '199324793094',
    projectId: 'auth-38ee4',
    authDomain: 'auth-38ee4.firebaseapp.com',
    storageBucket: 'auth-38ee4.appspot.com',
    measurementId: 'G-C1T0EFC3PD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDEpYCEZDAmI-juRhvDDNFLHERlotgLhKY',
    appId: '1:199324793094:android:27561d49fcfe9ae6328687',
    messagingSenderId: '199324793094',
    projectId: 'auth-38ee4',
    storageBucket: 'auth-38ee4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDVJlbsgfadX2JM0lNHSOZwF3GxG4UIuxY',
    appId: '1:199324793094:ios:26b140080af4ce66328687',
    messagingSenderId: '199324793094',
    projectId: 'auth-38ee4',
    storageBucket: 'auth-38ee4.appspot.com',
    iosBundleId: 'com.example.fireBaseAuthentication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDVJlbsgfadX2JM0lNHSOZwF3GxG4UIuxY',
    appId: '1:199324793094:ios:6ecdfd353c943485328687',
    messagingSenderId: '199324793094',
    projectId: 'auth-38ee4',
    storageBucket: 'auth-38ee4.appspot.com',
    iosBundleId: 'com.example.fireBaseAuthentication.RunnerTests',
  );
}
